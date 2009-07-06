class AddIdrestaurantsMenu < ActiveRecord::Migration
   def self.up
    add_column :menus, :restaurant_id, :integer
  end

  def self.down
    remove_column :menus,:restaurant_id
  end
end
