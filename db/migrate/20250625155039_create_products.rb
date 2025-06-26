class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.references :type, null: true, foreign_key: true
      t.references :environment, null: true, foreign_key: true # Fixed spelling
      t.timestamps
    end
  end
end
