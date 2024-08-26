class ModifyComment < ActiveRecord::Migration[7.0]
  def change
    change_table :comments do |t|
      t.integer :parent_id
      t.integer :post_id
      t.string :title
      t.text :body
    end
  end
end
