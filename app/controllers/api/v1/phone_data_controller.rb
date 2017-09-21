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
    device_data.build_number = params[:buildNumber]
    device_data.bundle_id = params[:bundleId]
    device_data.device_country = params[:deviceCountry]
    device_data.device_id = params[:deviceId]
    device_data.device_locale = params[:deviceLocale]
    device_data.device_name = params[:deviceName]
    device_data.instance_id = params[:instanceId]
    device_data.manufacturer = params[:manufacturer]
    device_data.model = params[:model]
    device_data.readable_version = params[:readableVersion]
    device_data.system_name = params[:systemName]
    device_data.system_version = params[:systemVersion]
    device_data.timezone = params[:timezone]
    device_data.unique_id = params[:uniqueId]
    device_data.user_agent = params[:userAgent]
    device_data.version = params[:version]
    device_data.is_emulator = params[:isEmulator]
    device_data.is_tablet = params[:isTablet]
    # NETWORK INFORMATION
    network_information = NetworkInformation.new
    network_information.ip_address = params[:ip]
    network_information.ipv4_address = params[:ipV4]
    network_information.ssid = params[:ssid]
    network_information.bssid = params[:bssid]
    network_information.save
  end


end
