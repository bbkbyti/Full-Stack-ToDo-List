# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Weekday.destroy_all
Todo.destroy_all

Todo.create!(title: 'Buy grocery')
Todo.create!(title: 'Go to school')
Todo.create!(title: 'Pay rent')
Todo.create!(title: 'Buy gas')
Todo.create!(title: 'Study Math for two hours')
Todo.create!(title: 'Call mom')
Todo.create!(title: 'Practice guitar for one hour')
Todo.create!(title: 'Solve algorithms for one hour')
Todo.create!(title: 'Practice JavaScript for two hours')
Todo.create!(title: 'Go to soccer game in the afternoon')

puts "#{Todo.count} todos created!"

Weekday.create!(day: 'Sunday')
Weekday.create!(day: 'Monday')
Weekday.create!(day: 'Teusday')
Weekday.create!(day: 'Wednesday')
Weekday.create!(day: 'Thursday')
Weekday.create!(day: 'Friday')
Weekday.create!(day: 'Saturday')

puts "#{Weekday.count} weekdays created!"