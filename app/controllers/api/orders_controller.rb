class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
  
  def create
    carted_products = current_user.carted_products.where("status = ?", "carted")

    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end

    tax = subtotal * 0.09

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax
    )
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id )
      render "show.json.jb"
    else
      render json: { errors: @orders.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
    if @order
      render "show.json.jb"
    else
      render json: { }, status: :unauthorized
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    render json: { message: "Order #{params[:id]} deleted"}
  end
end
