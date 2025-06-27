class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :classification
      t.string :environment
      t.timestamps
    end
  end
end
