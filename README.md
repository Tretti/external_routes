# ExternalRoutes

ExternalRoutes is a plugin for Ruby on Rails that makes it easy to split your
routes file in to multiple files.

## Installation

The plugin is currently only available as a gem on Github. Put it in your
Gemfile:

	gem "external_routes", :git => "git://github.com/Tretti/external_routes.git"

## Usage

Use the new `draw` method in the routes file:

```ruby
draw :admin
```

This will include the `config/routes/admin.rb` file into the standard routes file.
It will wrap all routes from the `admin.rb` file into the "admin" namespace.

Use the `namespace` option to override or disable the namespace:

```ruby
draw :admin, namespace: "foo"
```

This will use "foo" for the namespace. To disable the namespace just pass
`false` as the value:

```ruby
draw :admin, namespace: false
```

## Tests

Run the tests using RSpec

	$ bundle install
	$ bundle exec rspec

## License

ExternalRoutes is licensed under [The MIT license](http://opensource.org/licenses/MIT)