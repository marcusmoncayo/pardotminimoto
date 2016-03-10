class LapsController < ApplicationController
  def new
    @lap = Lap.new
    @users = User.all
    @bikes = Bike.all
  end

  def index
    @laps = Lap.all
  end

  def create
    @lap = Lap.new(lap_params)
    respond_to do |format|
      if @lap.save
        format.html { redirect_to bike_leaderboard_path(@lap.bike_id), notice: 'Lap was successfully saved.' }
      else
        format.html { redirect_to root_path, notice: 'Lap was not successfully saved.' }
      end
    end
  end

  def lap_params
    params.require(:lap).permit(:user_id, :bike_id, :formatted_time)
  end
end
