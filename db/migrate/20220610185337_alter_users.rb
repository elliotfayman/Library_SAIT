class AlterUsers < ActiveRecord::Migration
  def up
    add_column("users", :first, :string)
    add_column("users", :last, :string)
    add_column("users", :state, :string)
    add_column("users", :city, :string)
    add_column("users", :adress, :string)
    add_column("users", :phone, :string)

  end

  def down
    remove_column("users", :first, :string)
    remove_column("users", :last, :string)
    remove_column("users", :state, :string)
    remove_column("users", :city, :string)
    remove_column("users", :adress, :string)
    remove_column("users", :phone, :string)

  end
end
