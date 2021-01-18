require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/products")
products = response.parse

rows = products.map do |product|
  [
    product["name"],
    product["price"],
    product["description"]
  ]
end
p rows

table = TTY::Table.new(header: ["Name","Price","Description"], rows: [["a1", "a2", "a3"], ["b1", "b2", "b3"]])
puts table.render(:ascii)

table = TTY::Table.new(header: ["Name","Price","Description"], rows: [["2021 Calendar", 20, "wall calendar with a cute animal for each month"], ["Cactus Eraser", 2, "Make your dest look cuter with this cactus eraser"]])
puts table.render(:ascii)


# pp products

# response = HTTP.get("http://localhost:3000/api/products/3")
# product = response.parse

# pp product

