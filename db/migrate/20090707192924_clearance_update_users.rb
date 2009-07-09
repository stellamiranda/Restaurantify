class ClearanceUpdateUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :email
      t.string :encrypted_password, :limit => 128
      t.string :salt, :limit => 128
      t.string :token, :limit => 128
      t.datetime :token_expires_at
      t.boolean :email_confirmed, :default => false, :null => false
    end
    
    add_index :users, [:id, :token]
    add_index :users, :email
    add_index :users, :token
  end
  
  def self.down
    change_table(:users) do |t|
      t.remove :email,:encrypted_password,:salt,:token,:token_expires_at,:email_confirmed
    end
  end
end
