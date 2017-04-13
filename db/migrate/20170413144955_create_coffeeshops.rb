class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name, null: false
      t.location :name, null: false

      t.timestamps null: false
    end
  end
end
