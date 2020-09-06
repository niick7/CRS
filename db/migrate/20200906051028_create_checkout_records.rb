class CreateCheckoutRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :checkout_records do |t|
      t.references :renter
      t.references :car
      t.datetime :pickupDate
      t.datetime :returnDate
      t.datetime :dueDate
      t.decimal :rentPrice, precision: 10, scale: 2
      t.decimal :fineOfLateReturn, precision: 10, scale: 2
      t.decimal :fineOfDamaged, precision: 10, scale: 2
      t.integer :checkOutStatus

      t.timestamps
    end
  end
end
