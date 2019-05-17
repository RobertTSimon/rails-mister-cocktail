require 'open-uri'
require 'json'

Cocktail.create(name: 'WHITE RUSSIAN')
Cocktail.create(name: 'CAIPIRINHA')
Cocktail.create(name: 'RAMOS GIN FIZZ')
Cocktail.create(name: 'CORPSE REVIVER')

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

drinks.each do |drink|
  Ingredient.create(name: drink)
end
