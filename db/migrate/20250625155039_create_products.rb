class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :classification
      t.string :environment
      t.decimal :price
      t.integer :inventory
      t.decimal :discount
      t.timestamps
    end
  end
end
