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

  def make_profile_pic
    @picture = Picture.find(params[:id])
    @picture.kitty.pictures.each do |reset|
      # Set all to false first
      reset.is_profile_pic = false
      reset.save
    end
    # Set the active one to true
    @picture.is_profile_pic = true
    @picture.save
    redirect_to @picture
  end
  
  def create
    @kitty = Kitty.find(params[:picture][:kitty_id])
    @picture = Picture.new( params[:picture] )
    if @picture.save
      flash[:success] = "Picture successfully uploaded!"
      if (@kitty.pictures.size == 1)
	@picture.is_profile_pic = true
	@picture.save
      end
    
    redirect_to @kitty
    else
      flash[:failure] = "Something went wrong during the upload."
      render 'new'
    end
  end
  
end
