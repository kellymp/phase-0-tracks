# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("store_log.db")

#table for customers, orders, and payment info
create_customer = <<-SQL
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

create_orders = <<-SQL
  CREATE TABLE IF NOT EXISTS orders(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INTEGER,
    customer_id INTEGER,
    shipped BOOLEAN
  )
SQL

create_payments = <<-SQL
  CREATE TABLE IF NOT EXISTS payments(
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    cc_number INTEGER,
    cc_exp INTEGER
  )
SQL

# create each table (if it's not there already)
db.execute(create_customer)
db.execute(create_orders)
db.execute(create_payments)

#method to add a new customer to the customers table
def create_customer(db, name, email, phone, address, city, state, zip)
	db.execute("INSERT INTO customers (name, email, phone, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, email, phone, address, city, state, zip])
end

#method to add a new order to the orders table
def create_order(db, item, quantity, customer_id, shipped)
	db.execute("INSERT INTO orders (item, quantity, customer_id, shipped) VALUES (?, ?, ?, ?)", [item, quantity, customer_id, shipped])
end

#method to add new payment info to the payment table
def create_payment(db, customer_id, cc_number, cc_exp)
	db.execute("INSERT INTO payments (customer_id, cc_number, cc_exp VALUES (?, ?, ?)", [customer_id, cc_number, cc_exp])
end

#add 50 customers to the customers table
50.times do
	create_customer(db, Faker::Name.name, Faker::Internet.email, Faker::PhoneNumber.phone_number, Faker::Address.street_address, Faker::Address.city, Faker::Address.state_abbr, Faker::Address.zip)
end

#add 85 orders to the orders table
85.times do 
  create_order(db, Faker::Commerce.product_name, Faker::Number.between(1, 15), Faker::Number.between(1,50), Faker::Boolean.boolean)
end

#add payment information to the payments table
200.times do
  create_payment(db, Faker::Number.between(1,50), Faker::Business.credit_card_number, Faker::Business.credit_card_expiry_date)
end

#customers = db.execute("SELECT * FROM customers")
#customers.each do |customer|





