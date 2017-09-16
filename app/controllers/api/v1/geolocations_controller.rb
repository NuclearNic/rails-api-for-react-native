class Api::V1::GeolocationsController < ActionController::Base

  def index
    @geolocations = Geolocation.all
  end

  def create
    # byebug
    geolocation = Geolocation.new
    geolocation.latitude = params[:latitude]
    geolocation.longitude = params[:longitude]
    geolocation.error = params[:error]
    geolocation.save
  end

end
