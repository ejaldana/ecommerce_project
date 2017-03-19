class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
