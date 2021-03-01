class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to product_path(@product), notice: 'Produto criado!'
    else
      render :new
    end
  end

  def show
  end

  private

  def budget_params
    params.require(:product).permit(:price, :name, :stock_quantity)
  end
end
