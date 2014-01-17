require 'rubygems' unless defined? Gem # rubygems is only needed in 1.8
require 'irbtools'

# Put this in your ~/.irbrc for easy rails route scanning
#
# Usage:
# > routes
# => prints all routes
# > routes /GET.*user/i
# => prints routes matching a given regex
# > routes "user"
# => matches strings as well

if defined? Rails

  if Rails::VERSION::STRING >= "4"

    # returns an array of routes in Rails 4
    def formatted_routes
      r = Rails.application.routes.routes
      i = ActionDispatch::Routing::RoutesInspector.new(r)
      f = ActionDispatch::Routing::ConsoleFormatter.new
      i.format(f).split("\n")
    end

  else
    require 'rails/application/route_inspector'

    # returns an array of routes in Rails 3
    def formatted_routes
      inspector = Rails::Application::RouteInspector.new
      inspector.format(Rails.application.routes.routes)
    end

  end

  # filter and print out the routes
  def routes(filter = nil)
    Rails.application.reload_routes!
    formatted = formatted_routes
    if filter
      formatted.select!{ |r| r.match(filter) }
    end
    puts formatted
  end
end
