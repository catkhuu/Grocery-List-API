class CreateShoppingListsTestRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists_test_recipes do |t|
      t.references  :shopping_list, index: true, foreign_key: true
      t.references  :test_recipe, index: true, foreign_key: true
      t.timestamps null: false 
    end
  end
end
