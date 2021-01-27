class Api::OrdersController < ApplicationController
  def index
    @orders = current_user.orders
    render "index.json.jb"
  end
  
  def create
    product = Product.find(params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09

    @order = Order.new(
      user_id: current_user.id,
      quantity: params[:quantity],
      product_id: params[:product_id],
      subtotal: subtotal,
      tax: tax,
      total: subtotal + tax
    )

    if @order.save
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
