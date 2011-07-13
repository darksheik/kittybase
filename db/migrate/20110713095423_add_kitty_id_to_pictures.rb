class AddKittyIdToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :kitty_id, :integer
  end

  def self.down
    remove_column :pictures, :kitty_id
  end
end
