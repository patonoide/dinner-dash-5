class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.text :name
      t.text :description
      t.text :price
      t.text :available

      t.timestamps
    end
  end
end
