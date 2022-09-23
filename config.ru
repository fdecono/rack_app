require_relative 'app'

run RackApp.new

#=========================#

# require_relative 'app_2'

# run Redirect.new(
#   RackApp.new,
#   from: '/example',
#   to: '/hello'
# )

# we have now implementd a rack middleware. As far as the WS is
# concerned, there's only 1 rack app "Redirect". This pattern is
# so common, it has a dedicated DSL:

#=========================#

# require_relative 'app_2'

# use Redirect, from: '/new-example', to: '/hello'

# run RackApp.new

#=========================#

# require_relative 'app_3'

# use Logger
# use Redirect, from: '/example-3', to: '/hello'

# run RackApp.new
