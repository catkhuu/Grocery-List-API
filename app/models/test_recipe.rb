class TestRecipe < ApplicationRecord
  belongs_to :shopping_list
  has_many :amounts
  has_many :ingredients, through: :amounts
  scope :specialty_ingredients, -> { where(is_specialty?: true) }
end
