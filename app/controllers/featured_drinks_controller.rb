class FeaturedDrinksController < ApplicationController

  def index
    @drinks = Drink.where(featured: true).page(params[:page])
  end

  protected
  def drink_params
    params.require(:drink).permit(:title, :description)
  end

end
