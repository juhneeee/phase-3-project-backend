puts "🌱 Seeding spices..."

# Seed your database here
Stock.create(name: "Apple", label:"APLE", price: 150, description:"Invest in the real sauce.")
Stock.create(name: "Banana", label:"BAN", price: 125, description:"The Stock That's Never Bruised!")
Stock.create(name: "Cherry", label:"CIER", price: 55, description:"The best fruit.")
Stock.create(name: "Watermelon", label:"H2O", price: 200, description:"Earth is just 75% watermelon.")
Stock.create(name: "Pear", label:"P", price: 22, description:"Green watery and not quite watermelon.")
Stock.create(name: "Mango", label:"HH", price:300, previous:300, description: "Fresh from Hagay's Horticulture Lab.")

User.create(name: "Abby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Bobby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Charlie", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Johnny", account_type: "Real", balance:1000.00, passcode: 1)
User.create(name: "Hagay", account_type: "Real", balance:1000.00, passcode: 1)
User.create(name: "Patrick", account_type: "Fake", balance: 1001.00, passcode: 0)
User.create(name: "Max", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Brody", account_type: "Fake", balance: 1000.00, passcode: 0)

Stock.find_by(name: "Apple").update(label:"🍎APLE")
Stock.find_by(name: "Banana").update( label:"🍌BAN")
Stock.find_by(name: "Cherry").update( label:"🍒CIER")
Stock.find_by(name: "Watermelon").update( label:"🍉H2O")
Stock.find_by(name: "Pear").update( label:"🍐P")
Stock.find_by(name: "Mango").update( label:"🥭HH")


puts "✅ Done seeding!"
