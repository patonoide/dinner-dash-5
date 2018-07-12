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
puts 'user OK'
puts "admin OK"

puts "criando category"
cat1 = Category.create(name: "Salada")
cat2 = Category.create(name: "Sobremesa")
cat3 = Category.create(name: "Pratos principais")

puts "category OK"
puts "criando refeições"

#img = File.open(File.join(Rails.root, '/app/assets/images/strogo.jpeg'))

meal1 = Meal.create!(name: 'Estrogonofe', description: 'contem Lactose', price: '50', available: true, category: cat3)
meal2 = Meal.create!(name: 'Churrasco', description: 'Feito na brasa', price: '50', available: true, category: cat3)
meal3 = Meal.create!(name: 'Feijoada', description: 'Não contém calabresa', price: '50', available: true, category: cat3)
meal4 = Meal.create!(name: 'Lasanha', description: 'Contém glutem', price: '50', available: true, category: cat3)
meal5 = Meal.create!(name: 'Pudim', description: 'contem lactose. Com raspas de limão', price: '50', available: true, category: cat2)
meal6 = Meal.create!(name: 'Salada de Macarrão Parafuso', description: 'Possui macarrão, frango e milho', price: '50', available: true, category: cat1)
puts 'refeições OK'

puts 'associação OK'

#ref1.image.attach(img)
#ref1.image.attach(
#    io: File.open('/home/vribas/Área de Trabalho/dinner-dash/dinner-dash-5/app/assets/images'),
#   content_type: 'application/jpeg'
#  )

