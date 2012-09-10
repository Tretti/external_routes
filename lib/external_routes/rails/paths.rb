require "pathname"

module ExternalRoutes
  module Rails
    module Paths
      module Path
        attr_reader :root

        def paths
          raise "You need to set a path root" unless @root.path
          map { |e| Pathname.new(@root.path).join(e) }
        end
      end
    end
  end
end

