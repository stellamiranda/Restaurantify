class AddPriceToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :price, :decimal
  end

  def self.down
    remove_column :products, :price
  end
end
