class MenuCategory < ActiveRecord::Migration
  def self.up
    create_table :menucategories,:id => false do |t|
      t.integer :menu_id
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
  drop_table :menucategories
  end
end
