# frozen_string_literal: true

# cloudinary credentials
Cloudinary.config do |config|
  config.cloud_name = ENV['cloud_name']
  config.api_key = ENV['api_key']
  config.api_secret =  ENV['api_secret']
  config.cdn_subdomain = ENV['cdn_subdomain']
end
