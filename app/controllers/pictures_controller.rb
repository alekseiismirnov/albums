class PicturesController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :destroy, :update]
  load_and_authorize_resource

  def show ; end

  def create
    current_user.pictures.create!(picture_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @picture.file.purge
    @picture.destroy
    redirect_to user_path(current_user)
  end

  def update
    tag_id = params[:tag_id]
    
    @picture.tags.destroy(tag_id) if tag_id
   
    unless tag_id
      tag_name = params[:picture][:tag_name]
      tag = Tag.find_by name: tag_name
      unless tag
        @picture.tags.create(name: tag_name)
      else
        @picture.tags = @picture.tags | [tag]
      end
  
      @picture.save
    end

    redirect_to picture_path(@picture)
  end

  protected

  def picture_params
    params.require(:picture).permit(:file)
  end
end
