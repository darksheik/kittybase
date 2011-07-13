class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
  end

  def new
    @picture = Picture.new
    @kitty = Kitty.find(params[:kitty_id])
  end

  def create
    @kitty = Kitty.find(params[:picture][:kitty_id])
    @picture = Picture.new( params[:picture] )
    if @picture.save
      flash[:success] = "Picture successfully uploaded!"
    
    redirect_to @kitty
    else
      flash[:failure] = "Something went wrong during the upload."
      render 'new'
    end
  end
  
end
