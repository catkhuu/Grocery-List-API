class IngredientAmount < ApplicationRecord
  belongs_to :test_recipe
  belongs_to :ingredient

end
