require 'spec_helper'

describe Kitty do
    before(:each) do
    @userattr = { :name => "Example User",
              :email => "user@example.com",
              :password => "foobar",
              :password_confirmation => "foobar"
            }
    user = User.new(@userattr)
    @attr = { :name => "Griffin",
              :dob => "03-15-2005",
              :breed => "American Shorthair",
              :likes => "Lounging, Eating",
              :user => user.id
            }
  end
  
  it "should create a new instance given valid attributes" do
    Kitty.create!(@attr)
  end
end
