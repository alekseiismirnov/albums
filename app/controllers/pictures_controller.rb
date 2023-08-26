class PicturesController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def show
    @picture = Picture.find(params[:id])
  end

  def create
    pic = current_user.pictures.create!(picture_params)

  end

  def picture_params
    params.require(:picture).permit(:file)
  end
end
