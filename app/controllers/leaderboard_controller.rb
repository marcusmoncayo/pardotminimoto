class LeaderboardController < ApplicationController
  def index
    @laps = []

    User.all.each do |user|
      @lap = Lap.where("user_id = ?", user.id).order("formatted_time ASC").first
      @laps.push(@lap) if @lap
    end

    if @laps.count < 10
      @laps = @laps.take(@laps.count).sort { |x, y| x.formatted_time <=> y.formatted_time  }
    else
      @laps = @laps.take(10).sort { |x, y| x.formatted_time <=> y.formatted_time  }
    end
  end
end
