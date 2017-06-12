class CreateShoppingList < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.string  :title, 
    end
  end
end
