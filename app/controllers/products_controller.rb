class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.search(params[:search])
      #second search for category name
      if @products.empty?
        #grab the id of category then find all products with that category
        category = Category.where('name LIKE ?', "%#{params[:search]}%").first
        @products = Product.where("category_id = #{category.id}")
      end
    elsif params[:category_id]
      @products = Product.where("category_id = #{params[:category_id]}")
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
