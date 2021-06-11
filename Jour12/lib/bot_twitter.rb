require 'dotenv'
require 'twitter'
require 'pry'

Dotenv.load('.env')

def login_twitter
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end

def streaming_twitter
  client = Twitter::Streaming::Client.new do |config|
    config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
    config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
    config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
    config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
  end
  return client
end

def streaming(streaming, client)
  streaming.filter(track: "#bonjour_monde") do |tweets|
    client.favorite(tweets)
    puts "Hey, je viens juste de liker un message !"
  end
end

client = login_twitter
streaming = streaming_twitter
streaming(streaming,client)

def streaming(streaming, client)
  streaming.filter(track: "#bonjour_monde") do |tweets|
    client.favorite(tweets)
    client.follow(tweets.user.screen_name)
    puts "Hey, je viens juste de liker un message !"
  end
end