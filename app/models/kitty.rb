class Kitty < ActiveRecord::Base
  attr_accessible :name, :dob, :breed, :likes, :user_id
  belongs_to :user
  has_many :pictures
  
  validates :name, :presence => true,
            :length   => { :maximum => 50 }
  validates :user_id, :presence => true

end
