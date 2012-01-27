module ApiKeyMaker
  module ControllerAdditions
  
    def make_api_key(length = 10)
      ApiKeyMaker.make_api_key(length)
    end
    
  end
end