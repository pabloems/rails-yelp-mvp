class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    #HAY QUE ASIGNAR EL REVIEW A RESTAURANT
    @review.resturant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
  end




  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
