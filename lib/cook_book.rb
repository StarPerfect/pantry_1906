class CookBook
  attr_reader :summary

  def initialize
    @summary = []
  end

  def recipe_details(recipe)
    {
      :name => recipe.name,
      :details => { :ingredients => ingredient_details(recipe),
      :total_calories => recipe.total_calories}
    }
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
    ingredients.uniq.reverse
    # ingredients.sort_by recipe.total_calories -continue to figure out how to sort by amount of calories contributed to recipe
  end

  def add_recipe(recipe)
    @summary << recipe_details(recipe)
  end
end
