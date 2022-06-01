class Stock < ActiveRecord::Base
    has_many :stock_stats
    has_many :transactions
    has_many :users, through: :transactions
    
    def change_price
        num = rand(0.9..1.15)
        new_price = price * num
        self.update(price: new_price.round(2))
    end
end
