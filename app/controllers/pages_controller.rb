# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:page]}"
  end

  def index
    @picture = Picture.last
    @demo_pictures = Picture.limit(5).order("RANDOM()").first(5)
    @demo_users = User.limit(5).order("RANDOM()").first(5)
    @demo_tags = Tag.all.sort_by(&:name)
  end
end
