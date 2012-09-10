require "rails"

module ExternalRoutes
  class Railtie < ::Rails::Railtie
    config.before_initialize do |app|
      app.paths.add "config/routes", :glob => "**/*.rb"
    end
  end
end