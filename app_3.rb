class Redirect
  def initialize(app, from:, to:)
    @app = app
    @from = from
    @to = to
  end

  def call(env)
    if env['PATH_INFO'] == @from
      [ 301, {'Location' => @to}, [] ]
    else
      @app.call(env)
    end
  end
end

class RackApp
  def call(env)
    if env['PATH_INFO'] == '/hello'
      [ 200, {'Content-Type' => 'text/plain'}, ['Fefi says hello'] ]
    else
      [ 404, {'Content-Type' => 'text/plain'}, ['Not Found'] ]
    end
  end
end

class Logger
  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.now
    status, headers, response = @app.call(env)
    end_time = Time.now
    total_time = end_time - start_time
    puts "***** [HTTP Request] status: #{status} | time:#{total_time.to_s} *****"

    [status, headers, response]
  end
end
