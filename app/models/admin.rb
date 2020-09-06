# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  password   :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Admin < User
end
