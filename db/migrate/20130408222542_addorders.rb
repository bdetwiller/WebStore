class Addorders < ActiveRecord::Migration
  def change
    rename_table :carts, :orders
    add_column :products, :price, :integer
  end
end
