class Ingredient < ApplicationRecord
  has_many :ingredient_amounts
  has_many :test_recipes, through: :ingredient_amounts
end
