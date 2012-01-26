require 'spec_helper'

class ApiAccess < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend ApiKeyMaker::ModelAdditions
  attr_accessor :api_token, :api_special_token
  make_api_key :api_token, 13
  make_api_key :api_special_token
end

describe ApiKeyMaker::ModelAdditions do
  
  it "should create the api_token upon saving" do
    ApiAccess.create!().api_token.blank?.should be_false
  end
  
  it "should create the api_token upon saving to a length of 13 characters" do
    ApiAccess.create!().api_token.length.should eq(13)
  end
  
  it "should create the api_special_token upon saving" do
    ApiAccess.create!().api_special_token.blank?.should be_false
  end
  
  it "should create the api_special_token upon saving to a default of 10 characters" do
    ApiAccess.create!().api_special_token.length.should eq(10)
  end
end