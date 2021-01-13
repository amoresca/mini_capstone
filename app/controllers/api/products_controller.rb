class Api::ProductsController < ApplicationController

  def all_products
    @products = Product.all
    render "all_products.json.jb"
  end

  def first_product
    @product = Product.first
    render "single_product.json.jb"
  end

  def random_product
    total_products = Product.all.length
    random = rand(1..total_products)
    @product = Product.find_by(id: random)
    render "single_product.json.jb"
  end

end
