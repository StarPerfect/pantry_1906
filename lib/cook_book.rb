class CookBook
  attr_reader :summary

  def initialize
    @summary = []
  end

  def recipe_ingredients(recipe)
    recipe.ingredients_required.map do |ingredient|

    end
  end

  def ingredient_details(recipe)
    ingredients = []
    recipe.ingredients.map do |ingredient|
      details = {
        :ingredient => ingredient.name,
        :amount => (recipe.ingredients_required[ingredient].to_s + " " + ingredient.unit)
      }
      ingredients << details
    end
  end

  def add_recipe(recipe)

  end
end
