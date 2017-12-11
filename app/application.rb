class application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  if req.path.match (/items/<ITEM NAME)
    @@items.each do |name, price|
    resp.write "#{price}\n"
  end
else
  resp.write "Path Not Found"
end
resp.finish
end
end
