class User < ActiveRecord::Base
    has_many :user_stats
    has_many :transactions
    has_many :stocks, through: :transactions
    
    def buy(stock, quantity)
        self.transaction.create(transaction_type: "buy", stock: stock, quantity: quantity, price: stock.price, balance_change: stock.price*quantity* -1)
        self.update(balance: balance - stock.price*quantity)
    end

    def sell(stock, quantity)
        self.transaction.create(transaction_type: "sell", stock: stock, quantity: -quantity, price: stock.price, balance_change: stock.price*quantity)
        self.update(balance: balance + stock.price*quantity)
    end

    def list_stocks
        hash = self.transactions.group(:stock_id).sum(:quantity)
        totals = self.transactions.group(:stock_id).sum(:balance_change)
        hash.each.map do |k , q|
            s = Stock.find(k)
            value = s.price * q
            amount_invested = totals[k]
            {label: s.label, price: s.price, quantity: q, current_value: value, amount_invested: amount_invested, net_change: value+amount_invested}
        end 
    end
    
    def portfolio_value
        hash = self.transactions.group(:stock_id).sum(:quantity)
        if hash.empty?
            return 0
        else
            hash.each.map{|id, q| Stock.find(id).price * q}.reduce(&:+).round(2)
        end
    end

    def net_worth
        balance + portfolio_value
    end
    
    def create_order (buy_array =[], sell_array =[])
        #takes array of buy id and sell id
        order = {}
        buy_array.each do |e|
            if order[e]
                order[e] += 1
            else
                order[e] = 1
            end
        end

        sell_array.each do |e|
            if order[e]
                order[e] -= 1
            else
                order[e] = -1
            end
        end
        order.each do |k, v|
            buy(Stock.find(k), v) if v > 0
            sell(Stock.find(k), -v) if v < 0
        end
    end

    def random_stocks(min=100, max=400)
        buy_budget = rand(min..max)
        stock_arr = []

        while buy_budget > 0
            stock = Stock.all.sample
            stock_arr << stock.id
            buy_budget -= stock.price
        end
        stock_arr
    end

    def gamble
        plan_to_buy = random_stocks
        plan_to_sell = random_stocks

        create_order(plan_to_buy , plan_to_sell)
    end

    # def buy_random(min=100, max=400)
    #     plan_to_buy = random_stocks(min, max)
    #     create_order(plan_to_buy)
    # end

    # def sell_random(min=100, max=400)
    #     plan_to_sell = random_stocks(min, max)
    #     create_order([] , plan_to_sell)
    # end


end
