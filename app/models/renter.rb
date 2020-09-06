# == Schema Information
#
# Table name: renters
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  firstName   :string
#  lastName    :string
#  phoneNumber :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Renter < User
  has_one :address

  # Nested attr
  accepts_nested_attributes_for :address

  validates :firstName, presence: true
  validates :lastName, presence: true
end
