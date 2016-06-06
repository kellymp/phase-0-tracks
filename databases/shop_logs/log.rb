# require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("store_log.db")

#create customer_info table
create_customer_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS customers(
		id INTEGER PRIMARY KEY,
		name VARCHAR (255),
		address VARCHAR (255),
		city VARCHAR (255),
		state VARCHAR (255),
		zipcode	INTEGER,
		phone INTEGER,
		email VARCHAR (255),
		cc_number INTEGER,
		cc_exp INTEGER,
		)
SQL

#create orders table
create_orders_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS orders(
		id INTEGER PRIMARY KEY,
		item VARCHAR (255),
		quantity INTEGER,
		customer_id INTEGER,
		shipped BOOLEAN,
		FOREIGN KEY (customer_id) REFERENCES customers(id)
		)
SQL

#create tables
#db.execute(create_customer_cmd)
#db.execute(create_orders_table_cmd)








