class RecipefoodController < ApplicationController
  def create
    recipe = params[:recipe_id]
    ingredient = params[:ingredient]

    ingredient.each do |food|
      qty = Food.find(food).quantity
      Recipefood.create(quantity: qty, recipe_id: recipe, food_id: food)
    end

    redirect_to recipe_path(recipe)
  end

  def destroy
    food = params[:recipe_id]
    recipe = params[:id]
    p "@@@ destroy #{food}"
    p "@@@ redirect #{recipe}"
    Recipefood.find_by(food_id: food, recipe_id: recipe).destroy()
    redirect_to recipe_path(recipe)
  end
end
