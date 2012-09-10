require 'test_helper'

class ExternalRoutesTest < ActionController::TestCase
  test "routes drawing from config/routes" do
    @controller = External::SuccessController.new
    assert_recognizes({ :controller => "external/success", :action => "index" }, { :path => "external/success/index", :method => :get })
    get "index"
    assert_response :success
  end

  test "routes drawing from config/routes without namespace" do
    @controller = SuccessController.new
    assert_recognizes({ :controller => "success", :action => "index" }, { :path => "success/index", :method => :get })
    get "index"
    assert_response :success
  end
end
