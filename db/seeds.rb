# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Home.create(address: '111 Smith Street')

User.create(name: "Quinn Lashinsky", email: 'quinnlashinsky@gmail.com', password: "1234", age: 22)

Duty.create(home_id: 1, user_id: 1, category: 'bathroom')