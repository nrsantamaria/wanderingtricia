class ImagesController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to '/' unless is_admin?
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @image = @user.images.new
  end

  def create
    @user = User.find(params[:user_id])
    @image = @user.images.new(image_params)
    if @image.save
      redirect_to user_path(@image.user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @image = Image.find(params[:id])
    if @image.update(image_params)
      redirect_to user_path(@image.user)
    else
      render :edit
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to user_path(@image.user)
  end

  private
  def image_params
    params.require(:image).permit(:name, :description, :avatar, :portfolio, :price)
  end
end
