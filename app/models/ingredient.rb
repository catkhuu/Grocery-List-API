class Ingredient < ApplicationRecord
  has_many :amounts
  has_many :test_recipes, through: :amounts 
end
