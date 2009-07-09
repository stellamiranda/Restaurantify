class AddUserRestaurant < ActiveRecord::Migration
  def self.up
    add_column :menus , :menu_id, :integer
  end

  def self.down
    remove_column :menus ,:menu_id
  end
end
