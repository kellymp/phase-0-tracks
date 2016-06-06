# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("market_logs.db")

#table for customers
create_customers = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone INTEGER,
    address VARCHAR(255),
    city VARCHAR (255),
    state VARCHAR (255),
    zip INTEGER
  )
SQL

#table for orders
create_orders = <<-SQL
  CREATE TABLE IF NOT EXISTS orders(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INTEGER,
    shipped BOOLEAN
  )
SQL

#create customers table
db.execute(create_customers)

#create orders table
db.execute(create_orders)

#add test customer
#db.execute("INSERT INTO customers (name, email, phone, address, city, state, zip) VALUES ('Simone Rockwell', 'simrock@gmail.com', 8476665783, '450 Canteburry Cove St.', 'Lake George', 'PA', 67995)")

#create method to add multiple customers to the customers table
def add_customers(db, name, email, phone, address, city, state, zip)
	db.execute("INSERT INTO customers (name, email, phone, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, email, phone, address, city, state, zip])
end

#create method to add multiple order to the orders table
def add_orders(db, item, quantity, shipped)
	db.execute("INSERT INTO orders (item, quantity, shipped) VALUES (?, ?, ?)", [item, quantity, shipped])
end

#add values to customers table
#30.times do 
#	add_customers(db, Faker::Name.name, Faker::Internet.email, Faker::PhoneNumber.phone_number, Faker::Address.street_address, Faker::Address.city, Faker::Address.state_abbr, Faker::Address.zip_code)
#end

#add values to orders table



