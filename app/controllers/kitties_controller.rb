class KittiesController < ApplicationController
  
  def new
    @user = current_user
    @kitty = Kitty.new
    @title = "Add a new kitty!"
  end
  
  def create
    @user = current_user
    @kitty = Kitty.new(params[:kitty])
    if @kitty.save      
      flash[:success] = "Kitty created successfully!"
      
      redirect_to @kitty
    else
      flash[:failure] = "Kitty not created!"
      render 'new'
      
    end
  end
  
  def show
    @kitty = Kitty.find(params[:id])
  end
end
