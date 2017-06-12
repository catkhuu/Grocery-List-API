class ShoppingList < ApplicationRecord
  belongs_to :user
  has_many :test_recipes
end
