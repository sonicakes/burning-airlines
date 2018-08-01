# == Schema Information
#
# Table name: flights
#
#  id            :bigint(8)        not null, primary key
#  flight_number :integer
#  origin        :string
#  destination   :string
#  date          :datetime
#  plane_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Flight < ApplicationRecord
  belongs_to :plane
  has_many :reservations
  has_many :users, :through => :reservations
end
