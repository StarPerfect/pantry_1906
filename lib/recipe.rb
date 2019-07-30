class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new
  end

  def add_ingredient(item, quantity)
    @ingredients_required[item] = quantity
  end

  def amount_required(item)
    @ingredients_required[item]
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    calories = 0
    @ingredients_required.map do |ingredient|
      calories += (ingredient[1] * ingredient[0].calories)
    end
    calories
  end
end
