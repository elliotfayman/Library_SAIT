class ApplicationController < ActionController::Base
  protect_from_forgery

  #Sends City Hash to entire application
  def new
    super
    @cities = CS.get(:us, params[:state])
   end

end
