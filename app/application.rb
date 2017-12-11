class Application

@@items = [Item.new("Figs", 3.42), Item.new("Pears", 0.99)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

  if req.path.match(/items/)
    item_name = req.path.split("/items/").last
    item = @@items.find{|i| i.name == item_name}
    resp.write item.price
elsif 
  !item
  resp.write "Item not found"
  resp.status = 400
end
else
  resp.write "Route not found"
  resp.status = 404
resp.finish
end
end
