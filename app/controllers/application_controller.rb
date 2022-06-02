require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # get "/transactions" do
  #   Transaction.all.to_json(methods: [:stock])
  # end
  
  get "/stocks" do
    Stock.all.to_json(methods: [:percent_change])
  end

  get "/users" do
    User.all.to_json(methods: [:net_worth, :list_stocks, :portfolio_value])
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(methods: [:net_worth, :list_stocks, :portfolio_value])
  end

  get "/users/:id/transactions" do
    transactions = User.find(params[:id]).transactions.last(20)
    transactions.to_json(methods: [:stock])
  end

  get "/trade/:user_id/:stock_id/:quantity" do
    if params[:quantity].to_i > 0
      User.find(params[:user_id].to_i).buy(Stock.find(params[:stock_id].to_i), params[:quantity].to_i)
    end
    if params[:quantity].to_i < 0
      User.find(params[:user_id].to_i).sell(Stock.find(params[:stock_id].to_i), params[:quantity].to_i*-1)
    end
  end

  get "/update/prices" do
    Stock.all.each {|s| s.change_price}
  end

  get "/fakes/gamble" do
    User.all.where(account_type: "Fake").each {|f| f.gamble}
  end


end
