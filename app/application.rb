class Application
   def call(env)
       resp = Rack::Response.new
        current_time = Time.now
        current_hour = current_time.to_a[2]
       if current_hour < 12
        resp.write "Good Morning!"
       else
        resp.write "Good Afternoon!"
       end

       resp.finish
   end 
end