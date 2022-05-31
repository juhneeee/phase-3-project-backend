class CreateStockStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_stats do |t|
      t.timestamp :time
      t.float :price
      t.integer :stock_id
      t.timestamps
    end
  end
end
