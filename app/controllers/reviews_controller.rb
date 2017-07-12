class ReviewsController < ApplicationController
  before_action :only => [:destroy] do
    redirect_to '/' unless is_admin?
  end
  before_action :only => [:new] do
    redirect_to '/' unless current_user && is_admin?
  end

  def new
    @image = Image.find(params[:image_id])
    @review = Review.new
  end

  def create
    @image = Image.find(params[:image_id])
    @review = @image.reviews.new(review_params)
    if @review.save
      redirect_to image_path(@review.image)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to request.env['HTTP_REFERER']
  end

  private
  def review_params
    params.require(:review).permit(:author, :content_body)
  end
end
