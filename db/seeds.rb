# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "criando admin"
User.create!(email: 'admin@admin.com', name: 'Admin', password: '123456', admin: true)
puts "criando admin OK"
puts "criando refeições"
Meal.create!(name: 'estrogonofe', description: 'contem Lactose', price: '50', available: 'sim')
Meal.create!(name: 'churrasco', description: 'completo', price: '30', available: 'nao')
Meal.create!(name: 'feijoada', description: 'contem carne de porco', price: '10', available: 'sim')
