class RecipesController < ApplicationController
  def create
    if params[:title] && params[:making_time] && params[:serves] && params[:ingredients] && params[:cost]
      recipe = Recipe.create(
        title: params[:title],
        making_time: params[:making_time],
        serves: params[:serves],
        ingredients: params[:ingredients],
        cost: params[:cost]
      )
      render json: { message: "Recipe successfully created!", recipe: recipe.to_json }
    else
      render json: { message: "Recipe creation failed", required: "title, making_time, serves, ingredients, cost" }
    end
  end

  def index
    recipes = Recipe.all
    render json: { recipes: recipes.as_json }
  end

  def show
    recipe = Recipe.where(id: params[:id])
    if recipe
      render json: { message: "Recipe details by id", recipe: recipe.to_json }
    else
      render json: { message: "Recipe not found" }
    end
  end

  def update
    recipe = Recipe.where(id: params[:id])
    if recipe
      recipe.title = params[:title] if params[:title]
      recipe.making_time = params[:making_time] if params[:making_time]
      recipe.serves = params[:serves] if params[:serves]
      recipe.ingredients = params[:ingredients] if params[:ingredients]
      recipe.cost = params[:cost] if params[:cost]
      if recipe.save
        render json: { message: "Recipe successfully updated!", recipe: recipe.to_json }
      end
    end
  end

  def destroy
    recipe = Recipe.where(id: params[:id])
    if recipe
      recipe.destroy
      render json: { message: "Recipe successfully removed!" }
    else
      render json: { message: "No Recipe found" }
    end
  end
end