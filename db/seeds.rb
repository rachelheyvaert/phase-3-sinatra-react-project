puts "🌱 Seeding spices..."

# Seed your database here
category_1 = Category.create(title: "Daily")
category_2 = Category.create(title: "Weekly")
category_3 = Category.create(title: "Monthly")
category_4 = Category.create(title: "Yearly")


Todo.create(name: "Make bed", details: "Pick pillows off floor and place on bed", category_id: category_1)
Todo.create(name: "Do Laundry", details: "Wash clothes and sheets", category_id: category_2)
Todo.create(name: "Make a budget", details: "Review spending and forcast for next month", category_id: category_3)
Todo.create(name: "Oil Change", details: "Take car to shop", category_id: category_4)


puts "✅ Done seeding!"
