class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save # Will raise ActiveModel::ForbiddenAttributesError
    if @restaurant.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render :new, status: :unprocessable_entity  # oblige l'utilisateur a remplir les champs
    end
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
