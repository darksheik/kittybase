class KittiesController < ApplicationController
  
    def new
    @kitty = Kitty.new
    @title = "Add a new kitty!"
  end
  
  def create
    @user = current_user
    @kitty = Kitty.new(params[:kitty])
    if @kitty.save      
      flash[:success] = "Welcome to KittyBase!  Your account has been created successfully.  Now add a kitty!"
      
      redirect_to @kitty
    else
      flash[:failure] = "Kitty not created!"
      render 'new'
      
    end
  end
end
