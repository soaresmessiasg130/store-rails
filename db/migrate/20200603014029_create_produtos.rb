class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :code
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
