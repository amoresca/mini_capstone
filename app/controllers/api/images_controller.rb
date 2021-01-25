class Api::ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.json.jb"
  end

  def create
    @image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )
    if @image.save
      render "show.json.jb"
    else
      render json: { errors: @image.errors.full_messages }
    end
  end

  def show
    @image = Image.find(params[:id])
    render "show.json.jb"
  end
end
