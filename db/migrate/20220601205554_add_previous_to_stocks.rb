class AddPreviousToStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :previous, :float
  end
end
