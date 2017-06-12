class CreateShoppingList < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.string  :title, default: 'Untitled'
      t.datetime  :shopping_date
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
