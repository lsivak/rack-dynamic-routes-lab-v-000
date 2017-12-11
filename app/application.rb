class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  if req.path == "/items/Item Name/"
    @@items.each do |name, price|
    resp.write "#{price}\n"
  end
else
  resp.write "Route Not Found"
  resp.status = 404
end
resp.finish
end
end
