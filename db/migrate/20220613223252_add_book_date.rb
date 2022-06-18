class AddBookDate < ActiveRecord::Migration
  def up
    add_column("books", 'checkindate', :date)
  end

  def down
    remove_column("books", 'checkindate')
  end
end
