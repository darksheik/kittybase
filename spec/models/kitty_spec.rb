require 'spec_helper'

describe Kitty do
    before(:each) do
    @userattr = { :name => "Example User",
              :email => "user@example.com",
              :password => "foobar",
              :password_confirmation => "foobar"
            }
    @user = User.create!(@userattr)
    @attr = { :name => "Griffin",
              :dob => "03-15-2005",
              :breed => "American Shorthair",
              :likes => "Lounging, Eating",
              :user_id => @user.id
            }
  end
  
  it "should create a new instance given valid attributes" do
    puts @attr[:name] + " " + @attr[:user_id].to_s
    Kitty.create!(@attr)
  end
  
  it "should require a name" do
    no_name_kitty = Kitty.new(@attr.merge(:name => ""))
    no_name_kitty.should_not be_valid
  end
  
  it "should reject a new instance without a user id" do
    @attr[:user_id] = nil
    kitty = Kitty.new(@attr)
    kitty.should_not be_valid
  end
end
