class AddPropertiesToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :properties, :text
  end
end
