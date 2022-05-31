class AddBalanceChangeToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :balance_change, :float
  end
end
