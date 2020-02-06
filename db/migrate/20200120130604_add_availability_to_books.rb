class AddAvailabilityToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :availability, :integer
  end
end
