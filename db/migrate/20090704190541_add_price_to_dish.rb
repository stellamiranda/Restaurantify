class AddPriceToDish < ActiveRecord::Migration
   def self.up
    add_column :dishes, :price, :decimal
  end

  def self.down
    remove_column :dishes,:price
  end
end
