class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product
      .title_search(params[:search])
      .discounted(params[:discount])
      .sorted(params[:sort], params[:sort_order])

    if params[:category]
      category = Category.find_by("name = ?", params[:category])
      @products = category.products
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      stock: params[:stock],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    
    if @product.save
      if params[:image_url]
        @image = Image.new(
          url: params[:image_url],
          product_id: @product.id
        )
        @image.save
      end
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
    # @product.image_url = params[:image_url] || @product.image_url
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
