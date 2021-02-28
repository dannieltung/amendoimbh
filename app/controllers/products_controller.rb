class ProductsController < ApplicationController

  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: 'Product create!'
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, photos:[])
  end


end
