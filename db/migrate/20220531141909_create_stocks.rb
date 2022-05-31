class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name 
      t.string :label 
      t.float :price 
      t.integer :quantity 
      t.string :description 
      t.timestamps 
    end
  end
end
