class LapsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]
  def new
    @notice = notice
    @lap = Lap.new
    @users = User.all
    @bikes = Bike.all #hack to get accurate blue to first position
    @default_bike = @bikes.where('color = ?', 'Blue')[0] rescue @bikes[0]
  end

  def index
    @laps = Lap.all.where("user_id IS NOT NULL")
  end

  def create
    create_params = lap_params.clone
    create_params.delete(:bike_color)
    create_params[:bike_id] = bike_id_from_params(lap_params)
    @lap = Lap.new(create_params)
    respond_to do |format|
      if @lap.save
        format.html { redirect_to bike_leaderboard_path(@lap.bike_id), notice: 'Lap was successfully saved.' }
        format.json { render json: {} }
      else
        format.html { redirect_to laps_new_path, notice: 'Lap was not successfully saved.' }
        format.json { render json: @lap.errors, status: 400 }
      end
    end
  end

  def unclaimed
    @laps = Lap.all.where("user_id IS NULL").where("created_at > ?", 5.minutes.ago)
  end

  def claim
    @lap = Lap.find(params[:id])
    @ordered_users = User.order('username asc')
  end

  def claim_post
    lap = Lap.find(params[:id])
    if (lap.created_at > 6.minutes.ago) then
      lap.update_attribute(:user_id, params[:user_id])
    end
    redirect_to unclaimed_laps_path
  end

  private

  def bike_id_from_params(params)
    return params[:bike_id] if params[:bike_id]
    Bike.all.where("color = ?", params[:bike_color])[0].id rescue nil
  end

  def lap_params
    params.require(:lap).permit(:user_id, :bike_id, :formatted_time, :bike_color)
  end
end
