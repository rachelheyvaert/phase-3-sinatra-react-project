puts "🌱 Seeding spices..."

# Seed your database here
category_1 = Category.create(title: "Daily")
category_2 = Category.create(title: "Weekly")
category_3 = Category.create(title: "Monthly")
category_4 = Category.create(title: "Yearly")
#Lmyobject.my_datetime = '06/30/2012 00:00'

Todo.create(name: "Make bed", details: "Pick pillows off floor and place on bed", category_id: category_1.id, completed: false  )
Todo.create(name: "Do Laundry", details: "Wash clothes and sheets", category_id: category_2.id, completed: false )
Todo.create(name: "Make a budget", details: "Review spending and forcast for next month", category_id: category_3.id, completed: false )
Todo.create(name: "Oil Change", details: "Take car to shop", category_id: category_4.id, completed: false )


puts "✅ Done seeding!"
