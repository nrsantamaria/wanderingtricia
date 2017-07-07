class HomeController < ApplicationController
  before_action :only => [:edit] do
    redirect_to '/' unless is_admin? || is_current_user?
  end

  def index
    @images = Image.all
  end

  def all_images
    @images = Image.all
    render :index
  end

  def landscape
    @images = Image.landscape
    render :index
  end

  def hospitality
    @images = Image.hospitality
    render :index
  end

  def interior
    @images = Image.interior
    render :index
  end

  def new

  end
end
