Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["TWITTER_CONSUMSER_KEY"], ENV["TWITTER_CONSUMER_SECRET_KEY"]
end