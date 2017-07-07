class ReviewsController < ApplicationController
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

  def edit
    @image = Image.find(params[:image_id])
    @review = Review.find(params[:id])
  end

  def update
    @image = Image.find(params[:image_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to image_path(@review.image)
    else
      render :edit
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
