class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :id
      t.string :title
      t.string :author
      t.date :published
      t.integer :book_id
      t.boolean :checked_out
      t.timestamps
    end
  end

end
