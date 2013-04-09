class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
    add_index :carts, :user_id
  end
end