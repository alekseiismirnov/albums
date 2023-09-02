class PicturesController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :destroy]

  def show
    #user_not_authorized unless can? :show, @picture
    @picture = Picture.find(params[:id]) 
  end

  def create
    pic = current_user.pictures.create!(picture_params)
  end

  def destroy
    picture = Picture.find(params[:id])
    picture.file.purge
    picture.destroy
    redirect_to user_path(current_user)
  end

  def picture_params
    params.require(:picture).permit(:file)
  end
end
