class PicturesController < ApplicationController
  def show
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:id)
  end
end
