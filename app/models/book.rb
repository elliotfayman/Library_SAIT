class Book < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :checkindate
  has_and_belongs_to_many :users, :join_table => 'books_users'
end
