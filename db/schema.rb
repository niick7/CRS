# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_06_051028) do

  create_table "addresses", force: :cascade do |t|
    t.integer "renter_id"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["renter_id"], name: "index_addresses_on_renter_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "color"
    t.integer "numOfSeats"
    t.string "licensePlate"
    t.decimal "rentPrice", precision: 10, scale: 2
    t.boolean "isAvailable", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "checkout_records", force: :cascade do |t|
    t.integer "renter_id"
    t.integer "car_id"
    t.datetime "pickupDate"
    t.datetime "returnDate"
    t.datetime "dueDate"
    t.decimal "rentPrice", precision: 10, scale: 2
    t.decimal "fineOfLateReturn", precision: 10, scale: 2
    t.decimal "fineOfDamaged", precision: 10, scale: 2
    t.integer "checkOutStatus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_checkout_records_on_car_id"
    t.index ["renter_id"], name: "index_checkout_records_on_renter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "type"
    t.string "firstName"
    t.string "lastName"
    t.string "phoneNumber"
    t.boolean "isBooking", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
