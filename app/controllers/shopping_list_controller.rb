class ShoppingListController < ApplicationController
  def index
    @current_user = current_user
    @foods = current_user.recipes.includes(:foods).map(&:foods).flatten.uniq
    @total_quantity = @foods.sum(&:total_quantity_recipes)
    @total_price = @foods.sum { |food| food.price * food.total_quantity_recipes }
  end
end
