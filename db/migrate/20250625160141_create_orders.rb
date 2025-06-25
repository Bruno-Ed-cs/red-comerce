class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :price
      t.integer :quantity
      t.string :adress
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
