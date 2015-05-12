# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  location_id :integer
#  title       :string
#  start       :datetime
#  finish      :datetime
#  description :text
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  belongs_to :location

  validates :location_id, :title, :start, :finish,
            presence: true
end
