class RackApp
  def call(env)
    if env['PATH_INFO'] == '/hello'
      [ 200, { 'Content-Type' => 'text/plain' }, [ 'Fefi\'s App' ] ]
    elsif env['PATH_INFO'] == '/qw'
      [ 301, {'Location' => '/hello'}, [] ]
    else
      [ 404, { 'Content-Type' => 'text/plain' }, [ 'Not Found' ] ]
    end
  end
end

#this approach cannot scale easily and will get messy really quickly.
# elsif env['PATH_INFO'] == '/hola'
#   [ 301, { 'Content-Type' => 'text/plain' }, [ 'La App de Fefi' ] ]

# if env['PATH_INFO'] == '/'
#   [ 301, {'Location' => '/hello'}, [] ]
# elsif env['PATH_INFO'] == '/esp'
#   [ 301, {'Location' => '/hello'}, [] ]
