class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.string :name
      t.integer :line
      t.references :section

      t.timestamps
    end
  end
end
