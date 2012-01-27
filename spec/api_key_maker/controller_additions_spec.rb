require 'spec_helper'

class ApiAccessController
    extend ApiKeyMaker::ControllerAdditions
    
    def self.get_key(length = 10)
      make_api_key(length)
    end
    
end

describe ApiKeyMaker::ControllerAdditions do
  
  it "should generate an api key string when calling make_api_key in the controller" do
    ApiAccessController.get_key(2).blank?.should be_false
  end
  
  it "should generate an api key string to 10 characters if a length is not defined" do
    ApiAccessController.get_key().length.should eq(10)
  end
  
end