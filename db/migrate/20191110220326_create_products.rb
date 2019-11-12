class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :prod_id
      t.decimal :price
      t.decimal :cost
      t.boolean :active

      t.timestamps
    end
  end
end
