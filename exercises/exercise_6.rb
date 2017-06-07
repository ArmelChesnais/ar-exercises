require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Steve", last_name: "Craft", hourly_rate: 60)
@store1.employees.create(first_name: "Mona", last_name: "Lee", hourly_rate: 50)
@store2.employees.create(first_name: "Armel", last_name: "Chesnais", hourly_rate: 50)
@store2.employees.create(first_name: "James", last_name: "Bond", hourly_rate: 70)
@store2.employees.create(first_name: "Laura", last_name: "Croft", hourly_rate: 80)
