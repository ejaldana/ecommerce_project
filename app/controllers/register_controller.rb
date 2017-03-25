class RegisterController < ApplicationController
  def index
    if params[:username]
      user = User.create(username: params[:username],
                  password: params[:password])

      customer = Customer.create(name: params[:name],
                      address: params[:address],
                      city: params[:city],
                      postalcode: params[:postalcode],
                      email: params[:email],
                      user_id: user.id,
                      province_id: params[:province])

      redirect_to :controller => 'home', :action => 'index'
    end
  end
end
