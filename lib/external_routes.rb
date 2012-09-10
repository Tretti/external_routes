require "action_dispatch"
require "rails/engine"

require "external_routes/rails/engine"
require "external_routes/rails/paths"
require "external_routes/action_dispatch/routing/mapper"
require "external_routes/action_dispatch/routing/route_set"
require "external_routes/railtie"

module ExternalRoutes
  def self.insert
    return if @inserted
    @inserted = true
    ::ActionDispatch::Routing::Mapper.send :include, ExternalRoutes::ActionDispatch::Routing::Mapper
    ::ActionDispatch::Routing::RouteSet.send :include, ExternalRoutes::ActionDispatch::Routing::RouteSet
    ::Rails::Engine.send :include, ExternalRoutes::Rails::Engine
    ::Rails::Paths::Path.send :include, ExternalRoutes::Rails::Paths::Path
  end
end

ExternalRoutes.insert