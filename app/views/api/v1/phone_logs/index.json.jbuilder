if @phone_logs.present?
  json.array!(@phone_logs) do |phone_log|
    json.extract! phone_log, :id, :raw_data
    json.created_at phone_log.created_at.strftime("%k:%M:%S, %d-%m-%Y")
    json.updated_at phone_log.updated_at.strftime("%k:%M:%S, %d-%m-%Y")
  end
else
  json.response do
    json.code 404
  end
end
