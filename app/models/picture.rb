class Picture < ActiveRecord::Base
belongs_to :kitty
has_attached_file :avatar,
                   :styles => { :medium => "300x300>",
                                :thumb => "100x100>" }
end
