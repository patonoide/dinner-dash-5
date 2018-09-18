class Order < ApplicationRecord
    has_many :order_meals, dependent: :destroy
    has_many :meals, :through => :order_meals
    belongs_to :user
    before_save :price_sum, only: [:add_meal]

    def add_meal(meal_params, how_many_more) #Howmanymore é um inteiro passado na chamada do método
        @current_order_item = self.order_meals.find_by(meal_id: meal_params[:id])

        if @current_order_item
            @current_order_item.quantity += how_many_more
            @current_order_item.save
        else
            @new_order = order_meals.create(meal_id: meal_params[:id],
                quantity: how_many_more, price: meal_params[:price],
                order_id: self.id )
            end
        end

        def destroy_meal(meal_params)
            @current_order_item = self.order_meals.find_by(meal_id: meal_params[:id])
            @current_order_item ? @current_order_item.destroy : 0 #MENSAGEM QUE DIZ QUE DEU ERRO
        end

        def remove_meal(meal_params, how_many_less)
            @current_order_item = self.order_meals.find_by(meal_id: meal_params[:id])

            if @current_order_item
                @current_order_item.quantity -= how_many_less
                @current_order_item.quantity < 0 ? @current_order_item.destroy : @current_order_item.save
            else
                #MENSAGEM QUE DIZ QUE DEU UM ERRO
            end

        end


        def finalize_order()
            self.status = 2
            self.user_id = current_user[:id]
        end

        def init
            self.status = 1
        end

        def change_status(status_number)
            self.status = status_number
        end

        def connect_to_user()
            self.user_id = current_user[:id]
        end

        private

        def price_sum
            self[:price] = self.order_meals.map{|meal| true ? meal.quantity*meal.price : 0}.sum
        end
    end
