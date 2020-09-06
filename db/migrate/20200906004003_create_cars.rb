class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :color
      t.integer :numOfSeats
      t.string :licensePlate
      t.decimal :rentPrice, precision: 10, scale: 2
      t.boolean :isAvailable, default: true

      t.timestamps
    end
  end
end
