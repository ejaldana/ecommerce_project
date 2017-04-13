class RegisterController < ApplicationController
  def index
    if params[:username]
      encrypted_password= Digest::SHA1.hexdigest(params[:password])
      user = User.create(username: params[:username],
                  password: encrypted_password)

      Customer.create(name: params[:name],
                      address: params[:address],
                      city: params[:city],
                      postalcode: params[:postalcode],
                      email: params[:email],
                      user_id: user.id,
                      province_id: params[:province])

      redirect_to :controller => 'home', :action => 'index'

      #flash[:notice] = "You signed up successfully"
    end
  end
end
