class RestaurantsController < ApplicationController

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

def create
  @restaurant = Restaurant.new(restaurant_params)
  if @restaurant.save
    redirect_to restaurants_path
  else
    render :new, status: :unprocessable_entity
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.destroy
	    redirect_to restaurants_path
    end
  end

end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
end

end
