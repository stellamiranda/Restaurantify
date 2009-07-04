class CreateRestaurants2 < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
