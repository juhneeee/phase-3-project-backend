class Stock < ActiveRecord::Base
    has_many :stock_stats
    has_many :transactions
    has_many :users, through: :transactions
    
    def change_price
        num = rand(0.85..1.05)
        new_price = price * num
        self.update(price: new_price.round(2), previous: price)
    end
end
