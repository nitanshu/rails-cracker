class AddLockVersionToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :lock_version, :integer
  end
end
