module ExternalRoutes
  module ActionDispatch
    module Routing
      module Mapper
        def draw (name, options = {})
          draw_paths = @set.draw_paths
          namespace = options.reverse_merge(namespace: name)[:namespace]
          file = "#{name}.rb"
          path = draw_paths.find { |path| path.join(file).file? }

          unless path
            msg = "Your router tried to #draw the external file #{file}\n" \
              "but the file was not found in:\n\n"
            msg += draw_paths.map { |paht| " * #{path}" }.join("\n")
            raise msg
          end

          content = path.join(file).read

          if namespace
            self.namespace(namespace) do
              self.send :instance_eval, content
            end
          else
            self.send :instance_eval, content
          end
        end
      end
    end
  end
end