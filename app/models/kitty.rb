class Kitty < ActiveRecord::Base
  attr_accessible :name, :dob, :breed, :likes, :user_id
  belongs_to :user
  
  validates :name, :presence => true,
            :length   => { :maximum => 50 }
end
