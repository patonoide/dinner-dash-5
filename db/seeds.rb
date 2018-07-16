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


meal1 = Meal.create!(name: 'Estrogonofe', description: 'contem Lactose', price: '50', available: true, category: cat3)
meal2 = Meal.create!(name: 'Churrasco', description: 'Feito na brasa', price: '50', available: true, category: cat3)
meal3 = Meal.create!(name: 'Feijoada', description: 'Não contém calabresa', price: '50', available: true, category: cat3)
meal4 = Meal.create!(name: 'Lasanha', description: 'Contém glutem', price: '50', available: true, category: cat3)
meal5 = Meal.create!(name: 'Pudim', description: 'contem lactose. Com raspas de limão', price: '50', available: true, category: cat2)
meal6 = Meal.create!(name: 'Salada de Macarrão Parafuso', description: 'Possui macarrão, frango e milho', price: '50', available: true, category: cat1)
puts 'refeições OK'

puts 'associação OK'




puts 'Criando Situação'
Situation.create!(description:"Pagamento pendente")
Situation.create!(description:"Pagamento Confirmado")
Situation.create!(description:"Compra ainda não confirmada")


puts "Situação OK"



