class RenameAmountTableToIngredientAmount < ActiveRecord::Migration[5.1]
  def change
    rename_table('amounts', 'ingredient_amounts')
  end
end
