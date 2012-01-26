module ApiKeyMaker
  module ModelAdditions
    # To have an attribute default to a SHA1 encrypted unique string,
    # call <tt>make_api_key</tt> in any Active Record model class, and pass
    # it the attribute, and the length of string.  Length is optional, and
    # defaults to 10 characters.  The maximum characters is 39.
    #
    #     class ApiAccess < ActiveRecord::Base
    #       make_api_key :api_token, 13
    #     end
    #
    # This will be triggered on the <tt>before_validation</tt> callback.
    def make_api_key(attribute, length = 10)
      before_validation do
        send("#{attribute}=", ApiKeyMaker.make_api_key(length))
      end
    end
    
  end
end