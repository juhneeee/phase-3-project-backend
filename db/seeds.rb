puts "🌱 Seeding spices..."

# Seed your database here
Stock.create(name: "Apple", label:"APLE", price: 150, description:"Invest in the real sauce.")
Stock.create(name: "Banana", label:"BAN", price: 125, description:"The Stock That's Never Bruised!")
Stock.create(name: "Cherry", label:"CIER", price: 55, description:"The best fruit.")
Stock.create(name: "Watermelon", label:"H2O", price: 200, description:"Earth is just 75% watermelon.")
Stock.create(name: "Pear", label:"P", price: 22, description:"The best fruit.")
Stock.create(name: "Mango", label:"HH", price:300, previous:300, description: "Fresh from Hagay's Horticulture Lab.")

User.create(name: "Abby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Bobby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Charlie", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Johnny", account_type: "Real", balance:1000.00, passcode: 1)
User.create(name: "Hagay", account_type: "Real", balance:1000.00, passcode: 1)
User.create(name: "Patrick", account_type: "Fake", balance: 1001.00, passcode: 0)
User.create(name: "Max", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Brody", account_type: "Fake", balance: 1000.00, passcode: 0)


puts "✅ Done seeding!"
