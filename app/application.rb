class Application

@@items = [Item.new("Figs", 3.42), Item.new("Pears", 0.99)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/items/)
    item_name = req.path.split("/items/").last
    item = @@items.find{|i| i.name == item_name}
    resp.write item.price
else
  resp.write "Item not found"
  resp.status = 400
end
if !req.path.match(/items/)
  resp. write "Route not found"
  rep.status = 404
resp.finish
end
end
end
