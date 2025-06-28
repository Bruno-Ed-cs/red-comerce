class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.boolean :admin
      t.jsonb :wishes
      t.jsonb :cart
      t.jsonb :adresses

      t.timestamps
    end
  end
end
