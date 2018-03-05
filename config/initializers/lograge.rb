Rails.application.configure do
  config.lograge.enabled = true
  config.lograge.formatter = Lograge::Formatters::Logstash.new

  # add time to lograge
  config.lograge.custom_payload do |controller|
    {
      host: controller.request.host,
      params: controller.request.params,
      user_id: nil
    }
  end

  config.lograge.custom_options = lambda do |event|
    {}
  end

  config.lograge.ignore_custom = lambda do |event|
    # return true here if you want to ignore based on the event
  end
end
