Rails.application.config.middleware.use OmniAuth::Builder do
  provider :nrel, ENV['NREL_USER_KEY'], ENV['NREL_USER_SECRET']
end
