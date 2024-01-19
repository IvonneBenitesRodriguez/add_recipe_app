class ShoppingListController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @recipe = Recipe.first
    @shopping_list_items = generate_shopping_list_items(@user, @recipe)
    render_template_based_on_recipe_presence
  end

  private

  def render_template_based_on_recipe_presence
    if @recipe.present?
      render 'shopping_list/index'
    else
      render 'shopping_list/no_recipe'
    end
  end

  def generate_shopping_list_items(user, recipe)
    missing_food = []

    if recipe.present?
      recipe.foods.each do |food|
        missing_food << food unless user.foods.exists?(id: food.id)
      end
    end

    missing_food
  end
end
