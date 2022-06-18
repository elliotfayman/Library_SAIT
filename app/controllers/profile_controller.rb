class ProfileController < ApplicationController
  def profile
  end

  #Checks in books before automatic check in date
  def exec
    bl = current_user
    bl.books.each do |b| 
      b.checked_out = false
        b.save
        bl.save
    end
    bl.books.clear
    redirect_to :controller => 'main', :action => 'bookList'
  end
end
