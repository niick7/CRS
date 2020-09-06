# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  renter_id  :integer
#  street     :string
#  city       :string
#  state      :string
#  zip        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Address < ApplicationRecord
  belongs_to :renter

  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
end
