class ModifyOrderColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :date_submitted, :datetime
    add_column :orders, :status, :integer
    add_column :orders, :subtotal, :decimal
    add_column :orders, :shipping, :decimal
    add_column :orders, :tax, :decimal
    add_column :orders, :total, :decimal
    add_reference :orders, :customer, foriegn_key: true
  end
end
