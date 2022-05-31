class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :account_type 
      t.float :balance 
      t.integer :passcode
      t.timestamps 
    end
  end
end
