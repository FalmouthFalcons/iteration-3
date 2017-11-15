class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    # binding.pry
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @products
    else
      render 'new'
    end
  end

  def alert
    @products = Product.find(params[:id])
    @articles.alert
    redirect_to products_path
  end
end
