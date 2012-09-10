$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "external_routes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "external_routes"
  s.version     = ExternalRoutes::VERSION
  s.authors     = ["Jacob Carlborg"]
  s.email       = ["jacob.carlborg@tretti.se"]
  s.homepage    = "https://github.com/tretti/external_routes"
  s.summary     = "A Rails plugin that allows loading external route files from the router"
  s.description = "TODO: Description of ExternalRoutes."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"

  s.add_development_dependency "sqlite3"
end
