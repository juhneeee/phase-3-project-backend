class CreateUserStats < ActiveRecord::Migration[6.1]
  def change
    create_table :user_stats do |t|
      t.timestamp :time
      t.float :balance
      t.float :portfolio_value
      t.integer :user_id
      t.timestamps
    end
  end
end
