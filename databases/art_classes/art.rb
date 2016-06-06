# require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("art_directory.db")

create_classes = <<-SQL
  CREATE TABLE IF NOT EXISTS classes(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    section VARCHAR(255),
    days VARCHAR(255),
    meeting_time VARCHAR(255),
    instructor VARCHAR(255),
    slots_left INTEGER
  )
SQL

create_roster = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    class_id INTEGER,
    paid BOOLEAN
  )
SQL

#create classes and roster tables
db.execute(create_classes)
db.execute(create_roster)

