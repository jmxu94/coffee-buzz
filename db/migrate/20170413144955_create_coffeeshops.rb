class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name, null: false
      t.string :city, null: false
      t.string :address, null: false

      t.timestamps null: false
    end
  end
end
