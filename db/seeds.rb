# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "criando admin"
User.create!(email: 'admin@admin.com', name: 'Admin', password: '123456', admin: 1)
User.create!(email: 'user@user.com', name: 'User', password: '123456', admin: 0)
puts "criando admin OK"

puts "criando category"
cat1 = Category.create(name: "Salada")
puts "criando category OK"
puts "criando refeições"

#img = File.open(File.join(Rails.root, '/app/assets/images/strogo.jpeg'))

Meal.create!(name: 'estrogonofe', description: 'contem Lactose', price: '50', available: true)
#Meal.create!(name: 'churrasco', description: 'completo', price: '30', available: false)
#Meal.create!(name: 'feijoada', description: 'contem carne de porco', price: '10', available: true)

#ref1.image.attach(img)
#ref1.image.attach(
#    io: File.open('/home/vribas/Área de Trabalho/dinner-dash/dinner-dash-5/app/assets/images'),
#   content_type: 'application/jpeg'
#  )

puts 'refeições OK'