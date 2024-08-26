class ModifyBook < ActiveRecord::Migration[7.0]
  def change
    change_table :books do |t|
      t.integer :year_published
      t.string :isbn
      t.decimal :price, precision: 10, scale: 2
      t.boolean :out_of_print
      t.integer :views
      t.belongs_to :supplier, class_name: "Supplier", foreign_key: "supplier_id"
    end
  end
end
