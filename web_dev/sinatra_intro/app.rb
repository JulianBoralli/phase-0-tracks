# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do |p1, p2|
  # "#{params[:person_1]} loves #{params[:person_2]}"
  "#{p1} loves #{p2}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# contact route that displays address

get '/contact' do
  "2345 Folsom Street, San Francisco, CA"
end

# good job route that takes a parameter

get '/good_job/' do
  if params[:name]
    "Good Job #{params[:name]}!"
  else
    "Good Job!"
  end
end


# adding two numbers
get '/:n1/add/:n2' do |n1, n2|
  sum = n1.to_i + n2.to_i
  sum.to_s
end

# search database for campus

get '/location/:campus' do |campus|
  students = db.execute("SELECT * FROM students WHERE campus=?", campus)
  search = ""
  students.each do |student|
    search << "Name: #{student["name"]}<br>"
    search << "Age: #{student["age"]}<br>"
    search << "Campus: #{student["campus"]}<br><br>"
  end
  search
end

# search for anything
get '/:item/:value' do |item, value|
  students = db.execute("SELECT * FROM students WHERE #{item} = ?", value)
  if students.empty?
    "Sorry, no results!"
  else
    search = ""
    students.each do |student|
      search << "Name: #{student["name"]}<br>"
      search << "Age: #{student["age"]}<br>"
      search << "Campus: #{student["campus"]}<br><br>"
    end
    search
  end
end
