class ProductsController < ApplicationController
  def index
    if params[:search]
      if params[:category_type] == 'all'
        @products = Product.search(params[:search]).order(:name).page(params[:page]).per(5)
      else
        @products = Product.where('category_id LIKE ?', "%#{params[:category_type]}%").search(params[:search]).page(params[:page]).per(5)
      end

      #second search for category name


      #if @products.empty?
        #grab the id of category then find all products with that category
        #category = Category.where('name LIKE ?', "%#{params[:search]}%").first
        #@products = Product.where("category_id = #{category.id}").page(params[:page]).per(5)
      #end
    elsif params[:category_type]
      @products = Product.where("category_id = #{params[:category_type]}").page(params[:page]).per(5)
    elsif params[:new]
      @products = Product.where('created_at > ?', Date.today - 7).page(params[:page]).per(5)
    elsif params[:updated]
      @products = Product.where('updated_at > ?', Date.today - 7).page(params[:page]).per(5)
    else
      @products = Product.order(:name).page(params[:page]).per(5)
    end

    # creates a new instance of our OrderItem model for use in our forms
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

end
