class application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  if req.path == "/items/<ITEM NAME>"
    resp.write "#{item}\n"
  end
else
  resp.write "Path Not Found"
end
resp.finish
end
end
