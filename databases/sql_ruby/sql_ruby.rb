# Program to create and manage projects

# ORM
require 'sqlite3'

# Fake Data Generator
require 'faker'

# Create Database
db = SQLite3::Database.new( "projects.db" )

# Create Projects Table
