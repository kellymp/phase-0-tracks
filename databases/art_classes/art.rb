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

#create method to delete student
def delete_student(db, name)
	db.execute("DELETE FROM students WHERE name = ?", [name])
end

#create method to update paid status
def update_pay_status(db, name)
	db.execute("UPDATE students SET paid='true' WHERE name = ?", [name])
end


#add multiple student values to student table
#24.times do 
#	add_student(db, Faker::Name.name, rand(1..9), 'true')
#end

done = false

puts 'Summer 2016 Art Class Directory'
puts '--------------------------------'

until done == true
 
	puts "Enter 'enroll' to enroll a new student"
	puts "Enter 'payment' to submit a student payment"
	puts "Enter 'withdraw' to withdraw a student from a class"
	puts "Enter 'done' to exit the program."
	action = gets.chomp
	
	if action == 'enroll'
		puts 'Please enter the class id:'
		id = gets.chomp
		puts 'Enter student name:'
		student = gets.chomp
		puts 'Has tuition been paid? (true/false)'
		payment = gets.chomp
		add_student(db, student, id, payment)
		puts "#{student} has been enrolled."
		puts '--------------------------------'
		done = false
	
	elsif  action == 'payment'
		puts 'Enter student name:'
		student = gets.chomp 
		update_pay_status(db, student)
		puts "#{student}'s payment has been recieved."
		puts '--------------------------------'
		done = false
	
	elsif action == 'withdraw'
		puts 'Enter student name:'
		student = gets.chomp 
		delete_student(db, student)
		puts "#{student} has been withdrawn."
		puts '--------------------------------'
		done = false
	
	else action == 'done'
		puts "Thank you for using the Summer 2016 Art Class Directory."
		done = true
	end
	
end


