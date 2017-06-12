class TestRecipe < ApplicationRecord
  belongs_to :shopping_list
  has_many :ingredient_amounts
  has_many :ingredients, through: :ingredient_amounts
  scope :specialty_ingredients, -> { where(is_specialty?: true) }
end
