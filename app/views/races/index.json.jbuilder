json.array!(@races) do |race|
  json.extract! race, :id, :name, :latitude, :longitude, :length, :user_id
  json.url race_url(race, format: :json)
end
