class CreateSpecialtyPurchaseDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :specialty_purchase_destinations do |t|
      t.string  :company_name, null: false
      t.string  :website
      t.string  :address
      t.references :ingredient, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
