class ChangeTypeToTransactionTypeInTransactions < ActiveRecord::Migration[6.1]
  def change
    remove_column :transactions, :type;
    add_column :transactions, :transaction_type, :string
  end
end
