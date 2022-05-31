class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :type 
      t.float :price 
      t.integer :quantity 
      t.integer :user_id 
      t.integer :stock_id 
      t.timestamps 
    end
  end
end
