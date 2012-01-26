require "api_key_maker/version"
require "digest/sha1"

module ApiKeyMaker
  
  # Create an API Key
  def self.make_api_key(length = 10)
    Digest::SHA1.hexdigest(Time.now.to_s + rand(12341234).to_s)[1..length]
  end
  
end
