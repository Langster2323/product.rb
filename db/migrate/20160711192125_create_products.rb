class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :condition
      t.integer :on_clearance
      t.integer :quantity

      t.timestamps
    end
  end
end
