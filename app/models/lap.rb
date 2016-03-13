class Lap < ActiveRecord::Base
  belongs_to :user
  has_one :bike

  validates :formatted_time, numericality: true, presence: true
end
