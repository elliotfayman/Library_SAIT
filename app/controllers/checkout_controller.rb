require_relative '../workers/base_worker_worker'
class CheckoutController < ApplicationController
  def checkout
  end

  #Sets book checout status to true so that no other user can select the book to checkout
  #Uses sidekiq to schedule the automatic checkin proccess at the users specified checkin date
  def execute
    if ! current_user.books.empty?
      current_user.books.each do |b|
        HardJob.perform_at(b.checkindate.to_time.to_i - Time.now.to_i, current_user.email, 1)
        b.checked_out = true
        b.save
      end
     end
     redirect_to :controller => 'main', :action => 'bookList'
  end 
end
