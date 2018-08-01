# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  admin           :boolean
#

class User < ApplicationRecord
  has_many :reservations
  has_many :flights, :through => :reservations
   has_secure_password
end
