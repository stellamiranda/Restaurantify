class AddImageToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :image, :string
  end

  def self.down
    remove_column :dishes,:image
  end

  
end
