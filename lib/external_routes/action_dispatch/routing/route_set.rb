module ExternalRoutes
  module ActionDispatch
    module Routing
      module RouteSet
        attr_accessor :draw_paths

        def draw_paths
          @draw_paths ||= []
        end
      end
    end
  end
end