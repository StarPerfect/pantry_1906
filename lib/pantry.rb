class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, quantity)
    @stock[item] += quantity
  end

  def enough_ingredients_for?(recipe)
    @stock.all? do |item|
      recipe.ingredients_required.all? do |ingredient|
        stock_check(ingredient[0]) >= ingredient[1]
      end
    end
  end
end
