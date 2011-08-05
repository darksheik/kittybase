class AddIsProfilePicToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :is_profile_pic, :boolean
  end

  def self.down
    remove_column :pictures, :is_profile_pic
  end
end
