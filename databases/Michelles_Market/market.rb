# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("market_logs.db")

#table for customers, orders, and payment info
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

#create customers table
db.execute(create_customers)

#add test customer
#db.execute("INSERT INTO customers (name, email, phone, address, city, state, zip) VALUES ('Simone Rockwell', 'simrock@gmail.com', 8476665783, '450 Canteburry Cove St.', 'Lake George', 'PA', 67995)")

#create method to add multiple customers to the customers table
def add_customers(db, name, email, phone, address, city, state, zip)
	db.execute("INSERT INTO customers (name, email, phone, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?, ?)", [name, email, phone, address, city, state, zip])
end


