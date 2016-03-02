class User < ActiveRecord::Base
  validates :username, uniqueness: true

  has_many :laps

  def height_inches
    begin
      return (height % 12).floor
    rescue
      return 0
    end
  end

  def height_feet
    begin
      return (height / 12).floor
    rescue
      return 0
    end
  end
end
