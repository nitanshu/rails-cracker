class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :salary
      t.string :month

      t.timestamps
    end
  end
end
