class AppName
    def initialize(app, app_name)
      @app = app
      @app_name = app_name
    end
  
    def call(env)
        if env["ORIGINAL_FULLPATH"] == "/"
            ['200', {'Content-Type' => 'text/html'}, ["testando!"]]
        else
            status, headers, response = @app.call(env)
            headers.merge!({'X-App-Name' =>  "#{@app_name}"})
            [status, headers, response]
        end
    end
end
  