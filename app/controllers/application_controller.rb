class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Orrder.find(session[:order_id])
    else
      Orrder.new
    end
  end
end
