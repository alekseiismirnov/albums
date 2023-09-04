class PicturesController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :destroy]
  load_and_authorize_resource

  def show ; end

  def create
    pic = current_user.pictures.create!(picture_params)
  end

  def destroy
    @picture.file.purge
    @picture.destroy
    redirect_to user_path(current_user)
  end

  protected

  def picture_params
    params.require(:picture).permit(:file)
  end
end
