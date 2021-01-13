# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  [
    {
      name: "2021 Calendar",
      price: 20.00,
      description: "wall calendar with a cute animal for each month"
    },
    {
      name: "Mini Dog Stickets",
      price: 4.50,
      description: "sheet of small, assorted dogs (small stickers, not small dog breeds!)"
    },
    {
      name: "Cat Eraser",
      price: 3.00,
      description: "eraser shaped like a cat"
    }
  ]
)