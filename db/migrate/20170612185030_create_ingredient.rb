class CreateIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string  :name, null: false
      t.boolean :is_specialty, default: false
      t.timestamps null: false 
    end
  end
end
