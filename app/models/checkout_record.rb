# == Schema Information
#
# Table name: checkout_records
#
#  id               :integer          not null, primary key
#  renter_id        :integer
#  car_id           :integer
#  pickupDate       :datetime
#  returnDate       :datetime
#  dueDate          :datetime
#  rentPrice        :decimal(10, 2)
#  fineOfLateReturn :decimal(10, 2)
#  fineOfDamaged    :decimal(10, 2)
#  checkOutStatus   :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class CheckoutRecord < ApplicationRecord
  belongs_to :car
  belongs_to :renter

  validates_presence_of :pickupDate, :dueDate
end
