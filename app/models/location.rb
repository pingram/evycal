# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  city       :string
#  state      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ActiveRecord::Base
  has_many :events

  validates :city, :state,
            presence: true
  validates :city,
            uniqueness: { scope: :state }
  validates :state,
            length: { is: 2 }
end
