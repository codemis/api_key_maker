module ApiKeyMaker
  module ModelAdditions
    
    def make_api_key(attribute, length = 10)
      before_validation do
        send("#{attribute}=", ApiKeyMaker.make_api_key(length))
      end
    end
    
  end
end