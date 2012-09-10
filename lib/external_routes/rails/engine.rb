module ExternalRoutes
  module Rails
    module Engine
      extend ActiveSupport::Concern

      included do
        instance_eval do
          def routes
            routes = super
            routes.draw_paths.concat paths["config/routes"].paths
            routes
          end
        end
      end
    end
  end
end