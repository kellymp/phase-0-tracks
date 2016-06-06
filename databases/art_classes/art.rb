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

#create method to add students
def add_student(db, name, class_id, paid)
	db.execute("INSERT INTO students (name, class_id, paid) VALUES (?,?,?)", [name, class_id, paid])
end

#add multiple student values to student table
#24.times do 
#	add_student(db, Faker::Name.name, rand(1..9), 'true')
#end



