# require "test_helper"
# 
# class ExternalRoutesTest < ActionController::TestCase
#   test "routes drawing from config/routes" do
#     @controller = External::SuccessController.new
#     assert_recognizes({ :controller => "external/success", :action => "index" }, { :path => "external/success/index", :method => :get })
#     get "index"
#     assert_response :success
#   end
# 
#   test "routes drawing from config/routes without namespace" do
#     @controller = SuccessController.new
#     assert_recognizes({ :controller => "success", :action => "index" }, { :path => "success/index", :method => :get })
#     get "index"
#     assert_response :success
#   end
# end

require "spec_helper"

describe ExternalRoutes do
  context "routes drawing from config/routes" do
    it 'routes external/success/index to external::success#index' do
      expect(get: "external/success/index").to route_to(
        controller: "external/success",
        action: "index"
      )
    end
  end

  context "routes drawing from config/routes without namespace" do
    it 'routes success/index to success#index' do
      expect(get: "success/index").to route_to(
        controller: "success",
        action: "index"
      )
    end
  end
end