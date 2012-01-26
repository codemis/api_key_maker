# encoding: utf-8
require 'spec_helper'

describe ApiKeyMaker do
  
  it "should create an api key" do
    ApiKeyMaker.make_api_key.empty?.should be_false
  end
  
  it "should create an api key to a set length" do
    ApiKeyMaker.make_api_key(5).length.should eq(5)
  end
  
  it "should create an api key to a default length" do
    ApiKeyMaker.make_api_key.length.should eq(10)
  end
  
end