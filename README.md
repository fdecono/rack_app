# rack_app
Playing around with a Rack compliant app.

This little app implements the Rack protocol.

Our apps MUST:
  - Implement a `#call` method.
  - Receive the env hash as the `#call` argument.
  - Return an array with 3 elements:
    - HTTP status code
    - Response headers
    - Response body, as an enumerable object.

To start the web server, open your terminal and enter `rackup`.

The `config.ru` configuration file will require the `app` file you are going to use.

Use the `use` keyword to implement your middleware.
</br>
Use the `run` keyword to execute an instance of your app.
