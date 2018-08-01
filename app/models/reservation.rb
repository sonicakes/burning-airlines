# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  flight_id  :integer
#  user_id    :integer
#  reserved   :boolean
#  seat       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :flight
  belongs_to :user
end
