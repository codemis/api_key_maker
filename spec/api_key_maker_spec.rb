# encoding: utf-8
require 'spec_helper'

describe ApiKeyMaker do
  
  it "should create an api key" do
    ApiKeyMaker.make_api_key.empty?.should be_false
  end
  
end