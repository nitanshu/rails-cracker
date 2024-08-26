class AddReviewToSupplier < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :supplier_id, :integer
  end
end
