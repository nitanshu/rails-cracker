class CreateSoleraUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :solera_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
