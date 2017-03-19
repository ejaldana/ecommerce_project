class HomeController < ApplicationController
  def index
  end

  def about
    @aboutus = Webcontent.first
  end

  def contact
    @contactus = Webcontent.first
  end
end
