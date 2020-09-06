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
require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
