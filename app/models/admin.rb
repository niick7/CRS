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
class Admin < User
end
