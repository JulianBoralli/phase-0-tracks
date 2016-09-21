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

def member_todos(db, name)	
	db.execute("SELECT team_members.name, todo.name, todo.due_date FROM team_members 
		JOIN todo ON team_members.member_id=todo.member_id WHERE team_members.name = ?", [name])
end

# Driver Code
while true do
	puts "-------------------------------------"
	puts "What would you like to do:"
	puts "To list projects, type: \"projects\""
	puts "To list team members, type: \"team\""
	puts "To list all todos, type: \"todo\""
	puts "To list todos of a team member, type: \"member todo\""
	puts "To insert new project, type: \"new project\""
	puts "To insert new team member, type: \"new member\""
	puts "To insert new project, type: \"new todo\""
	puts "Type anything else to exit the program"
	puts "-------------------------------------"

	input = gets.chomp.downcase

	case input
	when "projects"
		db.execute("SELECT * FROM projects").each do |project|
			puts "#{project[1]}: starts #{project[2]} and ends #{project[3]}"
		end
	when "team"
		db.execute("SELECT * FROM team_members").each do |team_member|
			puts "#{team_member[1]}: #{team_member[2]}"
		end
	when "todo"
		db.execute("SELECT * FROM todo").each do |todo|
			puts "#{todo[1]} is due: #{todo[2]}"
		end
	when "member todo"
		puts "What's the name of the team member:"
		member = gets.chomp
		member_todos(db, member).each do |todo|
			puts "#{todo[0]}'s todo: #{todo[1]} is due #{todo[2]}"
		end
	when "new project"
		puts "Type your information in the following format:"
		puts "name, start_date, end_date"
		project_info = gets.chomp.strip
		project_info = project_info.split(",")
		project_name = project_info[0].strip
		project_start_date = Date.parse(project_info[1]).to_s
		project_end_date = Date.parse(project_info[2]).to_s
		create_project( db, project_name, project_start_date, project_end_date)
	when "new member"
		puts "Type your information in the following format:"
		puts "name, email"
		member_info = gets.chomp.strip
		member_info = member_info.split(",")
		member_name = member_info[0].strip
		member_email = member_info[1].strip
		create_team_members( db, member_name, member_email)
	when "new todo"
		puts "Type your information in the following format:"
		puts "name, due_date, project_id, member_id"
		todo_info = gets.chomp.strip
		todo_info = todo_info.split(",")
		todo_name = todo_info[0].strip
		todo_due_date = Date.parse(todo_info[1]).to_s
		todo_project_id = todo_info[2].to_i
		todo_member_id = todo_info[3].to_i
		create_todo(db, todo_name, todo_due_date, todo_project_id, todo_member_id)
	else
		puts "Thanks, bye bye!"
		break
	end

end

