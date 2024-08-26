class AddCountOfBooksToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :count_of_books, :integer
  end
end
