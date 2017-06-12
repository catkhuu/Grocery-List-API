class ShoppingListTestRecipe < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :test_recipe 
end
