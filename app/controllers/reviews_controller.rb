class ReviewsController < ApplicationController

def create
  @review = Review.new(review_params)
  set_restaurant
  @review.restaurant = @restaurant
  if @review.save
    redirect_to restaurants_show_path(@restaurant)
  else
    render :new, status: :unprocessable_entity
  end
end

private

def set_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end

def review_params
  params.require(:review).permit(:content, :rating)
end

end
