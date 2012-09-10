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