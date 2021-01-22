class Api::ProductsController < ApplicationController

  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name iLIKE ? OR description iLIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.is_discounted?
    end

    if params[:sort] && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      stock: params[:stock],
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    id = params[:id]
    @product = Product.find(id)
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @product = Product.find(id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.stock = params[:stock] || @product.stock
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    id = params[:id]
    product = Product.find(id)
    product.destroy
    render json: { message: "Product #{id} deleted" }
  end

end
