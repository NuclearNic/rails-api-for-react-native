class Api::V1::PhoneLogsController < ActionController::Base

  def index
    @phone_logs = PhoneLog.all
  end

end
