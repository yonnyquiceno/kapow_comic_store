class ProductsController < ApplicationController
  before_action :get_search_query
  def index
    redirect_to new_user_session_path unless user_signed_in?
    @products = Product.all unless @products
  end

  def new
    redirect_to new_user_session_path unless user_signed_in?
    @product = Product.new
  end

  def create
    redirect_to new_user_session_path unless user_signed_in?
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = 'comic registered successfully.'
      redirect_to products_path
    else
      render 'root'
    end
  end

  def show
    @prod_id = params[:id]
    @product = Product.find(@prod_id)
  end

  def search
    # @products = Product.where("name REGEXP ?", ".*#{@query}")
    @products = Product.where("name like ?", "%#{@query.downcase}%")
  end


  private

  def get_search_query
    @query = params[:q]
    search if @query
  end

  def product_params
    params[:product].permit(:name, :description, :price, :image1, :image2)
  end

end
