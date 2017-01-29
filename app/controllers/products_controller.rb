class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'comic registered successfully.'
      redirect_to products_path
    else
      flash[:error] = @product.errors.full_messages.join(',')
      render 'root'
    end
  end

  private

  def product_params
    params[:product].permit(:name, :description, :price, :image1, :image2)
  end

end
