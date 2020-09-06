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
require 'test_helper'

class RenterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
