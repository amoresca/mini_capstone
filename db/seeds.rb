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
      image_url: "https://i2.wp.com/thecottagemarket.com/wp-content/uploads/2020/08/TCM-Watercolor-Animal-2021-1.jpg"
      description: "wall calendar with a cute animal for each month"
    },
    {
      name: "Mini Dog Stickets",
      price: 4.50,
      image_url: "https://i.etsystatic.com/19765352/r/il/09e60d/1922301506/il_570xN.1922301506_fkj4.jpg"
      description: "sheet of small, assorted dogs (small stickers, not small dog breeds!)"
    },
    {
      name: "Cat Eraser",
      price: 3.00,
      image_url: "https://kawaii.kawaii.at/images/product_images/big_images/blue-Lucky-Cat-eraser-Maneki-Neko-from-Japan-206876-1.JP"
      description: "eraser shaped like a cat"
    }
  ]
)