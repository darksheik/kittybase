class AddUserToKitties < ActiveRecord::Migration
  def self.up
    add_column :kitties, :user_id, :integer
  end

  def self.down
    remove_column :kitties, :user_id
  end
end
