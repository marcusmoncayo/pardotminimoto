json.leaderboard @laps do |lap|
  json.player User.find(lap.user_id).username
  json.lap_time lap.formatted_time
  json.bike Bike.find(lap.bike_id).color
end
