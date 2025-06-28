class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :price
      t.integer :quantity
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.string :satus
      t.string :pay_met

      t.timestamps
    end
  end
end
