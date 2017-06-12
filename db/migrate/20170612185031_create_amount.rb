class CreateAmount < ActiveRecord::Migration[5.1]
  def change
    create_table :amounts do |t|
      t.integer :ingredient_amount, null: false
      t.string  :units, null: false
      t.references :test_recipe, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
