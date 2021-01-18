require "http"
require "tty-table"

# Index:
# ---------------------------
# response = HTTP.get("http://localhost:3000/api/products")
# products = response.parse
# pp products

# rows = products.map do |product|
#   [
#     product["name"],
#     product["price"],
#     product["description"]
#   ]
# end
# p rows

# table = TTY::Table.new(header: ["Name","Price","Description"], rows: [["a1", "a2", "a3"], ["b1", "b2", "b3"]])
# puts table.render(:ascii)

# table = TTY::Table.new(header: ["Name","Price","Description"], rows: [["2021 Calendar", 20, "wall calendar with a cute animal for each month"], ["Cactus Eraser", 2, "Make your dest look cuter with this cactus eraser"]])
# puts table.render(:ascii)

# Show
# ---------------------------
# response = HTTP.get("http://localhost:3000/api/products/3")
# product = response.parse

# pp product

# Create
# ---------------------------
# response = HTTP.post("http://localhost:3000/api/products/", :json => { 
#   :name => "Mouse Mousepad", 
#   :price => 10, 
#   :image_url => nil, 
#   :description => "a mousepad with a mouse on it" 
# })
# new_product = response.parse

# pp new_product

# Update
# ---------------------------
# response = HTTP.patch("http://localhost:3000/api/products/7", :json => {
#   :name => nil,
#   :price => nil,
#   :image_url => "https://i.ebayimg.com/images/g/dyIAAOSwabhUVoR9/s-l300.jpg",
#   :description => nil
# })
# product = response.parse

# pp product

# Destroy
# ---------------------------
