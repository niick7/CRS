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
require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
