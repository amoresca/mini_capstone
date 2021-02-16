User.create!([
  {name: "Courtney", email: "courtney@gmail.com", password: "password", admin: false},
  {name: "Casee", email: "casee@gmail.com", password: "password", admin: true}
])
Category.create!([
  {name: "Stationery"},
  {name: "Writing Supplies"},
  {name: "Calendars & Planners"},
  {name: "Paper"}
])
Supplier.create!([
  {name: "Fascinature", email: "info@fascinature.com", phone_number: "111-222-3333"},
  {name: "SimpleTrade", email: "info@simpletrade.com", phone_number: "444-555-6666"}
])
Product.create!([
  {name: "Cat Eraser", price: "3.0", description: "Eraser shaped like a cat. Comes with its own box.", stock: 0, supplier_id: 2},
  {name: "Mini Dog Stickers", price: "4.0", description: "Sheet of small, assorted dogs (small stickers, not small dog breeds!)", stock: 0, supplier_id: 2},
  {name: "Cat Pens", price: "8.0", description: "Set of 6 pens. There's some Japanese on them, but who knows what it means? Not me.", stock: 0, supplier_id: 2},
  {name: "Squirrel Greeting Cards", price: "12.0", description: "Set of 4 cards", stock: 0, supplier_id: 1},
  {name: "Fox Journal", price: "6.0", description: "Write down your thoughts in this charming fox journal", stock: 0, supplier_id: 1},
  {name: "2021 Calendar", price: "20.0", description: "Wall calendar with a cute jungle animal for each month.", stock: 0, supplier_id: 1},
  {name: "Mouse Mousepad", price: "10.0", description: "A mousepad with a mouse on it", stock: 0, supplier_id: 1}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 4, category_id: 4},
  {product_id: 5, category_id: 4},
  {product_id: 6, category_id: 1}
])
Image.create!([
  {url: "https://i.etsystatic.com/10321708/r/il/cedf47/2531318321/il_794xN.2531318321_fvs8.jpg", product_id: 1},
  {url: "https://i.etsystatic.com/24692000/r/il/e88228/2479892612/il_794xN.2479892612_rpjy.jpg", product_id: 2},
  {url: "https://i.etsystatic.com/16161002/r/il/fd68a8/2043657906/il_794xN.2043657906_pdmp.jpg", product_id: 3},
  {url: "https://i.etsystatic.com/8023986/r/il/b8eda9/1113934188/il_794xN.1113934188_67x9.jpg", product_id: 4},
  {url: "https://i.etsystatic.com/9615231/r/il/195469/2289673982/il_794xN.2289673982_m10k.jpg", product_id: 5},
  {url: "https://i.etsystatic.com/13080073/r/il/525c69/2541485878/il_794xN.2541485878_2xov.jpg", product_id: 1},
  {url: "https://i.etsystatic.com/10321708/r/il/80c407/2531319991/il_1140xN.2531319991_ca8e.jpg", product_id: 1},
  {url: "https://i.etsystatic.com/10321708/r/il/bcb5b1/2483645648/il_1140xN.2483645648_6kfg.jpg", product_id: 1},
  {url: "https://i.etsystatic.com/19765352/r/il/09e60d/1922301506/il_570xN.1922301506_fkj4.jpg", product_id: 2},
  {url: "https://i.etsystatic.com/19291230/r/il/5a125b/2173782149/il_1140xN.2173782149_on5e.jpg", product_id: 7},
  {url: "https://i.etsystatic.com/19291230/r/il/e0fcae/2126158016/il_1140xN.2126158016_da92.jpg", product_id: 7},
  {url: "https://i.etsystatic.com/17661688/r/il/da1f34/2582815458/il_1140xN.2582815458_oqev.jpg", product_id: 3},
  {url: "https://i.etsystatic.com/17661688/r/il/e8520c/2582815374/il_1140xN.2582815374_hiyb.jpg", product_id: 3},
  {url: "https://i.etsystatic.com/24692000/r/il/c102de/2762582646/il_1140xN.2762582646_e67q.jpg", product_id: 2},
  {url: "https://i.etsystatic.com/24692000/r/il/9d6f59/2762582608/il_1140xN.2762582608_o5u9.jpg", product_id: 2}
])
# Order.create!([
#   {user_id: 2, subtotal: "43.0", tax: "3.87", total: "46.87"}
# ])
# CartedProduct.create!([
#   {user_id: 2, product_id: 10, quantity: 5, status: "purchased", order_id: 20},
#   {user_id: 2, product_id: 3, quantity: 1, status: "purchased", order_id: 20},
#   {user_id: 2, product_id: 7, quantity: 3, status: "removed", order_id: nil},
#   {user_id: 2, product_id: 10, quantity: 2, status: "carted", order_id: nil},
#   {user_id: 2, product_id: 8, quantity: 3, status: "carted", order_id: nil}
# ])