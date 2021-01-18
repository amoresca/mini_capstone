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

table = TTY::Table.new(header: ["Name","Price","Description"], rows: rows)
puts table.render(:ascii)


# pp products

# response = HTTP.get("http://localhost:3000/api/products/3")
# product = response.parse

# pp product