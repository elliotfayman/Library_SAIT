class AdminPController < ApplicationController
  #Sends User information to adminP action
  def adminP
    @users = User.all
  end
end
