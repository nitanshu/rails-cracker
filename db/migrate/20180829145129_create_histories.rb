class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.integer :total_exp
      t.string :previous_company
      t.integer :employee_id

      t.timestamps
    end
  end
end
