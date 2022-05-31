puts "🌱 Seeding spices..."

# Seed your database here
Stock.create(name: "Apple", label:"APLE", price: 150, description:"The best fruit.")
Stock.create(name: "Banana", label:"BAN", price: 125, description:"The best fruit.")
Stock.create(name: "Cherry", label:"CIER", price: 55, description:"The best fruit.")
Stock.create(name: "Watermelon", label:"H2O", price: 200, description:"Earth is just 75% watermelon.")
Stock.create(name: "Pear", label:"P", price: 22, description:"The best fruit.")

User.create(name: "Abby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Bobby", account_type: "Fake", balance: 1000.00, passcode: 0)
User.create(name: "Charlie", account_type: "Fake", balance: 1000.00, passcode: 0)

puts "✅ Done seeding!"
