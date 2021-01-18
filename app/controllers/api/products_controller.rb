class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.json.jb"
  end

  # def first_product
  #   @product = Product.first
  #   render "single_product.json.jb"
  # end

  # def random_product
  #   total_products = Product.all.length
  #   random = rand(1..total_products)
  #   @product = Product.find_by(id: random)
  #   render "single_product.json.jb"
  # end

  def show
    id = params[:id]
    @product = Product.find(id)
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end

  def update
    id = params[:id]
    @product = Product.find(id)

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save

    render "show.json.jb"
  end

  def destroy
    id = params[:id]
    product = Product.find(id)
    product.destroy
    render json: { message: "Product #{id} deleted" }
  end

end
