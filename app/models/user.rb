# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  email       :string
#  password    :string
#  type        :string
#  firstName   :string
#  lastName    :string
#  phoneNumber :string
#  isBooking   :boolean          default("0")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class User < ApplicationRecord
  # Validations
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }

  def admin?
    type == 'Admin'
  end
end
