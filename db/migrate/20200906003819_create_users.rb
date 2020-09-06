class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :type
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.boolean :isBooking, default: false

      t.timestamps
    end
  end
end
