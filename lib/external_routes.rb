require "action_dispatch"
require "rails/engine"

require "external_routes/engine"
require "external_routes/mapper"
require "external_routes/route_set"

ActionDispatch::Routing::Mapper.send :include, ExternalRoutes::Mapper
ActionDispatch::Routing::RouteSet.send :include, ExternalRoutes::RouteSet
Rails::Engine.send :include, ExternalRoutes::Engine

module Rails
  class Engine < Railtie
    def routes
      @routes ||= ActionDispatch::Routing::RouteSet.new
      @routes.append(&Proc.new) if block_given?
      @routes.draw_paths.concat paths["config/routes"].paths
      @routes
    end
  end
end

require "pathname"

module Rails
  module Paths
    class Path
      attr_reader :root

      def paths
        raise "You need to set a path root" unless @root.path
        map { |e| Pathname.new(@root.path).join(e) }
      end
    end
  end
end

require "rails"

class MyCoolRailtie < Rails::Railtie
  config.before_initialize do |app|
    app.paths.add "config/routes", :glob => "**/*.rb"
  end
end