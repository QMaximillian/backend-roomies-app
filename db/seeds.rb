# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Home.create(home_address: 'Lewis Avenue', home_number: '131', city: "Brooklyn",
state: "New York", zip_code: 11221)

User.create(first_name: "Quinn", last_name: "Lashinsky", email: 'quinnlashinsky@gmail.com', password: "1234", age: 22)
