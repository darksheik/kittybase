class Picture < ActiveRecord::Base
belongs_to :kitty
has_attached_file :avatar,
                   :styles => { :medium => "300x300>",
                                :thumb => "100x100>" }

scope :profile_pic, where(:is_profile_pic => true)

def previous_pic
  self.class.first(:conditions => ["id < ? and kitty_id = ?", id, kitty_id], :order => "id desc")
end

def next_pic
  self.class.first(:conditions => ["id > ? and kitty_id = ?", id, kitty_id], :order => "id asc")
end


end
