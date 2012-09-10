module ExternalRoutes
  module Engine
    def routes
      routes = super
      routes.draw_paths.concat paths["config/routes"].paths
      routes
    end
  end
end