class RentersController < ApplicationController
  before_action :get_car, only: [:book_car, :execute_book_car, :execute_return_car]
  before_action :prevent_book_twice_car!, only: [:available_cars, :book_car, :execute_book_car]

  def available_cars
    @available_cars = Car.where(isAvailable: true)
  end

  def history
    @histories = current_user.checkout_records.order('id desc')
  end

  def book_car
  end

  def execute_book_car
    numOfDays = params[:numOfDays].to_i
    redirect_to book_car_renter_path(@car), danger: 'Num of days cannot be blank' and return if numOfDays == 0

    now = DateTime.now
    dueDate = numOfDays > 7 ? now + 7.days : now + numOfDays.days
    CheckoutRecord.create!(
      car_id: @car.id,
      renter_id: current_user.id,
      pickupDate: now,
      dueDate: dueDate
    )
    @car.update_attributes(isAvailable: false)
    current_user.update_attributes(isBooking: true)
    redirect_to return_car_renters_path, success: 'Booked car successfully!'
  end

  def return_car
    @rent_days = 0
    now = DateTime.now
    record = current_user.checkout_records.last
    @car = record.car
    while (record.pickupDate < now) do
      record.pickupDate += 1.day
      @rent_days += 1
    end
  end

  def execute_return_car
    rent_days = 0
    now = DateTime.now
    record = current_user.checkout_records.last
    car = record.car
    while (record.pickupDate < now) do
      record.pickupDate += 1.day
      rent_days += 1
    end
    total = rent_days * car.rentPrice
    # exceed due date
    fineOfLateReturn = 0
    if rent_days > 7
      fineOfLateReturn = 50 * (rent_days - 7)
      total += fineOfLateReturn
    end
    # any damaged
    fineOfDamaged = 0
    if params[:isDamaged]
      fineOfDamaged = 1000
      total += fineOfDamaged
    end
    record.update_attributes(
      returnDate: now,
      rentPrice: total,
      fineOfLateReturn: fineOfLateReturn,
      fineOfDamaged: fineOfDamaged
    )
    @car.update_attributes(isAvailable: true)
    current_user.update_attributes(isBooking: false)
    redirect_to root_path, success: 'Returned car successfully!'
  end

  private
    def get_car
      @car = Car.find(params[:id])
    end

    def prevent_book_twice_car!
      redirect_to return_car_renters_path, warning: 'Must return car before continuing.' and return if current_user.isBooking
    end
end