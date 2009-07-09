class AddOwnerIdToRestaurant < ActiveRecord::Migration
  def self.up
    add_column :restaurants, :owner_id, :integer
  end

  def self.down
    remove_column :restaurants,:owner_id
  end
end
