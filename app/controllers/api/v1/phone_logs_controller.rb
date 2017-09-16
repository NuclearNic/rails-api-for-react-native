class Api::V1::PhoneLogsController < ActionController::Base

  def index
    @phone_logs = PhoneLog.all
  end

  def create
    phone_log = PhoneLog.new
    phone_log.raw_data = params[:callHistory]
    phone_log.save
  end

end
