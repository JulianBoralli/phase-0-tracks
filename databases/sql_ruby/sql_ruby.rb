# Program to create and manage projects

# ORM
require 'sqlite3'
# Fake Data Generator
require 'faker'
# Date from Stdlib
require 'date'

# Create Database
db = SQLite3::Database.new( "projects.db" )
# db.results_as_hash = true

# Create Projects Table
projects_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS projects (
    project_id INTEGER PRIMARY KEY,
    name varchar(255),
    start_date DATE,
    end_date DATE
  );
SQL

db.execute(projects_table_cmd)

# Method to create project data
def create_project( db, name, start_date, end_date)
	db.execute("INSERT INTO projects (name, start_date, end_date) VALUES (?, ?, ?)", [name, start_date, end_date])
end

# Create Team Member Table
team_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS team_members (
    member_id INTEGER PRIMARY KEY,
    name varchar(255),
    email varchar(255)
  );
SQL

db.execute(team_table_cmd)

# Method to create team member data
def create_team_members( db, name, email)
	db.execute("INSERT INTO team_members (name, email) VALUES (?, ?)", [name, email])
end

# Create Todo Table
todo_table_cmd =  <<-SQL
  CREATE TABLE IF NOT EXISTS todo (
    todo_id INTEGER PRIMARY KEY,
    name varchar(255),
    due_date DATE,
    project_id INT,
    member_id INT,
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (member_id) REFERENCES team_members(member_id)
  );
SQL

db.execute(todo_table_cmd)

# Method to create todo data
def create_todo( db, name, due_date, project_id, member_id)
	db.execute("INSERT INTO todo (name, due_date, project_id, member_id) VALUES (?, ?, ?, ?)", [name, due_date, project_id, member_id])
end


# Code Used to Generate 100 rows in each table

# 100.times do 
# 	create_project(db, Faker::Beer.name, Faker::Date.backward(100).to_s, Faker::Date.forward(100).to_s)

# 	faker_name = Faker::Name.name
# 	create_team_members(db, faker_name, Faker::Internet.email(faker_name))

# 	create_todo(db, Faker::Lorem.word, Faker::Date.forward(100).to_s, (rand()*100).ceil, (rand()*100).ceil)
# end

# Driver Code
while true do
	puts "What would you like to do:"
	puts "To list projects, type: \"projects\""
	puts "To list team members, type: \"team\""
	puts "To list todos, type: \"todo\""

	input = gets.chomp.downcase
	case input
	when "projects"
		puts"OK1"
	when "team"
		puts"OK2"
	when "todo"
		puts"OK3"
	else
		puts "Ops"
		break
	end

end

