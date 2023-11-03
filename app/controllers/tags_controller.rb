class TagsController < ApplicationController
  before_action :authenticate_user!, :only => [:create, :destroy]
  load_and_authorize_resource :picture
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @pictures = @tag.pictures
  end

  def create
    picture = Picture.find(params[:picture_id])
    picture.tags.create(name: params[:name])

    redirect_to picture_path(picture)
  end
end
