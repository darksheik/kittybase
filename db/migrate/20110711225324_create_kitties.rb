class CreateKitties < ActiveRecord::Migration
  def self.up
    create_table :kitties do |t|
      t.string :name
      t.date :dob
      t.string :breed
      t.string :likes

      t.timestamps
    end
  end

  def self.down
    drop_table :kitties
  end
end
