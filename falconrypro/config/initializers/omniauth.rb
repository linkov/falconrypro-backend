Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook_access_token, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
