class Lap < ActiveRecord::Base
  belongs_to :user
  has_one :bike
end
