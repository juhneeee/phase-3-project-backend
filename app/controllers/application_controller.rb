class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/transactions" do
    Transaction.all.to_json.(include: :stock)
  end
  
  get "/stocks" do
    Stock.all.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json
  end

  get "/users/:id/transactions" do
    transactions = User.find(params[:id]).transactions
    transactions.to_json
  end


end
