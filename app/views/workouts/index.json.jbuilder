json.array!(@workouts) do |workout|
  json.extract! workout, :id, :name, :start_time, :description, :user_id
  json.url workout_url(workout, format: :json)
end
