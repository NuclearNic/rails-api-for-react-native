if @geolocations.present?
  json.array!(@geolocations) do |geolocation|
    json.extract! geolocation, :id, :latitude, :longitude, :error
    json.created_at geolocation.created_at.strftime("%k:%M:%S, %d-%m-%Y")
    json.updated_at geolocation.updated_at.strftime("%k:%M:%S, %d-%m-%Y")
  end
else
  json.response do
    json.code 404
  end
end
