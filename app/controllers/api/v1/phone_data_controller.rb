class Api::V1::PhoneDataController < ActionController::Base

  def get_data
    phone_log = PhoneLog.new
    phone_log.raw_data = params[:callHistory]
    phone_log.save

    geolocation = Geolocation.new
    geolocation.latitude = params[:latitude]
    geolocation.longitude = params[:longitude]
    geolocation.error = params[:error]
    geolocation.save
  end


end
