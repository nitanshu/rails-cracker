class ModifyAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string, limit: 15
    add_column :authors, :last_name, :string, limit: 15
    add_column :authors, :title, :string, limit: 15
  end
end
