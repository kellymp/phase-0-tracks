# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campuses/new' do
  erb :new_campus
end

#search students by campus
get '/bycampus' do
	@students = db.execute("SELECT * FROM students")
	erb :by_campus
end

get '/campuses' do
	@campuses = db.execute("SELECT * FROM campuses")
	erb :campuses
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students
   (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/new' do
  db.execute("INSERT INTO campuses
   (name) VALUES (?)", [params['name']])
  redirect '/campuses'
end


# add static resources