# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  make         :string
#  model        :string
#  year         :string
#  color        :string
#  numOfSeats   :integer
#  licensePlate :string
#  rentPrice    :decimal(10, 2)
#  isAvailable  :boolean          default("1")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Car < ApplicationRecord
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: true
  validates :numOfSeats, presence: true, numericality: true
  validates :licensePlate, presence: true
  validates :rentPrice, presence: true
end
