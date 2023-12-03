class TagsController < ApplicationController
  load_and_authorize_resource :tag
  load_and_authorize_resource :picture
  
  def index
  end

  def show
    @tag = Tag.find(params[:id])
    @pictures = @tag.pictures
  end
end
