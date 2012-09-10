require "spec_helper"

describe SuccessController do
  describe "GET index" do
    it "should render 'success' as the response" do
      get :index
      response.body.should == "success"
    end
  end
end

describe External::SuccessController do
  describe "GET index" do
    it "should render 'success' as the response" do
      get :index
      response.body.should == "success"
    end
  end
end