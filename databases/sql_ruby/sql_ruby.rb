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


# Driver Code
# create_project(db, "Project 2", Date.today.to_s, Date.today.next_year.to_s)

# create_team_members(db, "John", "john@gmail.com")

create_todo(db, "Task 1", Date.today.next_month.to_s, 1, 1)