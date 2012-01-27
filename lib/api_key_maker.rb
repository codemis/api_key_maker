require "api_key_maker/version"
require "api_key_maker/model_additions"
require "api_key_maker/controller_additions"
require "api_key_maker/railtie" if defined? Rails
require "digest/sha1"

module ApiKeyMaker
  
  def self.make_api_key(length = 10)
    Digest::SHA1.hexdigest(Time.now.to_s + rand(12341234).to_s)[1..length]
  end
  
end
