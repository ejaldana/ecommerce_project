class RegisterController < ApplicationController
  def index
    User.create(username: params[:username],
                password: params[:password])

    Customer.create(name: params[:name],
                    address: params[:address],
                    city: params[:city],
                    postalcode: params[:postalcode],
                    email: params[:email])
  end
end
