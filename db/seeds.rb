require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
api_return = JSON.parse(user_serialized)

drinks = []
api_return['drinks'].map do |drink|
  drink_ingredients = drink.values
  drink_ingredients.each do |ingredient|
    drinks << ingredient
  end
end

5.times do
  ingredient.create(name: drinks.rand)
end
