class AddColumnCategoryIdToDishes < ActiveRecord::Migration
   def self.up
    add_column :dishes, :category_id, :integer
  end

  def self.down
    remove_column :dishes,:category_id
  end
end
