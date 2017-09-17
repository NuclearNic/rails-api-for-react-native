class Api::V1::PhoneDataController < ActionController::Base

  def get_data
    # PHONE LOG:
    phone_log = PhoneLog.new
    phone_log.raw_data = params[:callHistory]
    phone_log.save
    # GEOLOCATION:
    geolocation = Geolocation.new
    geolocation.latitude = params[:latitude]
    geolocation.longitude = params[:longitude]
    geolocation.error = params[:error]
    geolocation.save
    # DEVICE DATA:
    device_data = DeviceDatum.new
    device_data.brand = params[:brand]
    device_data.buildNumber = params[:buildNumber]
    device_data.bundleId = params[:bundleId]
    device_data.deviceCountry = params[:deviceCountry]
    device_data.deviceId = params[:deviceId]
    device_data.deviceLocale = params[:deviceLocale]
    device_data.deviceName = params[:deviceName]
    device_data.instanceId = params[:instanceId]
    device_data.manufacturer = params[:manufacturer]
    device_data.model = params[:model]
    device_data.readableVersion = params[:readableVersion]
    device_data.systemName = params[:systemName]
    device_data.systemVersion = params[:systemVersion]
    device_data.timezone = params[:timezone]
    device_data.uniqueId = params[:uniqueId]
    device_data.userAgent = params[:userAgent]
    device_data.version = params[:version]
    device_data.isEmulator = params[:isEmulator]
    device_data.isTablet = params[:isTablet]
  end


end
