require 'spec_helper'

describe Picture do
    before(:each) do
    @userattr = { :name => "Example User",
              :email => "user@example.com",
              :password => "foobar",
              :password_confirmation => "foobar"
            }
    @user = User.create!(@userattr)
    @kittyattr = { :name => "Griffin",
              :dob => "03-15-2005",
              :breed => "American Shorthair",
              :likes => "Lounging, Eating",
              :user_id => @user.id
            }
    @kitty = Kitty.create!(@kittyattr)
    @attr = { :caption => "Pic of my cat",
              :avatar_file_name => "blah.jpg",
              :avatar_content_type => "image/jpeg",
              :avatar_file_size => "1234",
              :avatar_updated_at => Date.new
            }
  end
  
  it "should create a new instance given valid attributes" do
    puts @attr[:name] + " " + @attr[:user_id].to_s
    Kitty.create!(@attr)
  end
end
