class AddIsProfilePicToKitties < ActiveRecord::Migration
  def self.up
    add_column :kitties, :is_profile_pic, :boolean
  end

  def self.down
    remove_column :kitties, :is_profile_pic
  end
end
