# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
# Order.destroy_all

# creates a user so that new users will not get error

User.create!([{
    email: "test9@testers.com",
    password_digest: "$2a$10$ulnrKuQosY8upITqdSOIj.S7uL5q8JAmaP/9yy3R4IvbyrhSt427a",
    city: "Nashville"
}])


#creates new records for products table
Product.create!([{
    title: "Bicycle",
    product_type_id: "5",
    type: "",
    price: 122.66,
    delivery: "true",
    user_id: 9,
    description: "Head for the open trails on the Huffy Men's Alpine 26 18-Speed Mountain Bike. Built with a rugged steel hardtail frame and knobby tires with weather-resistant alloy rims, this mountain bike makes changing gears a breeze thanks to its Enzo twist-shifting system.


    Features and Benefits

    Rugged steel hardtail frame stands up to rough trail conditions
    26 x 1.95 knobby tires with weather-resistant alloy rims
    Steel linear pull brakes ensure reliable stopping
    6-speed index derailleur with the Enzo twist-shifting system for easy gear changes
    Kolo 1200 suspension fork",
    quantity: 6
},
{
    title: "Sofa",
    product_type_id: "2",
    type: "" ,
    price: 324.66,
    delivery: "true",
    user_id: 9,

    description: "Talk about fine lines and great curves. That’s the beauty of the Darcy sofa—made to suit your appreciation for clean, contemporary style. A striking flared frame, comfy pillow top armrests and an ultra-soft upholstery that holds up to everyday living complete this fashion statement.",
    quantity: 0
},
{
    title: "Lawnmower",
    product_type_id: "3",
    type: "" ,
    price: 99.00,
    delivery: "true",
    user_id: 9,
    description: "26 in. 208cc Walk Behind Mower w/Electric Start, Self Propelled, Spin-On Oil Filter, Variable Speed w/Blade Brake Clutch",
    quantity: 3

},
{
    title: "Oil Filter",
    product_type_id: "1",
    type: "" ,
    price: 24.66,
    delivery: "true",
    user_id: 9,
    description: "TP Extended Life Oil Filters provide maximum protection for your vehicle's engine. Its superior synthetic resin media traps contaminates with 99% efficiency over the life of the filter Engineered to provide 10,000 Miles of engine protection, when used with synthetic oil",
    quantity: 46
},
{
    title: "Boat",
    product_type_id: "5",
    type: "" ,
    price: 1324.66,
    delivery: "true",
    user_id: 9,
    description: "RP has revealed an all-new platform for its full-sized Sea-Doo personal watercraft line. Designed to be more stable and offer new storage and convenience features, including an audio system, the new three-passenger platform will support seven 2018 models in the Sea-Doo GTX, RTX and Wake product lines.
    ",
    quantity: 5
},
{
    title: "Computer",
    product_type_id: "6",
    type: "" ,
    price: 1224.66,
    delivery: "true",
    user_id: 9,
    description: "The 13-inch MacBook Air features 8GB of memory, a fifth-generation Intel Core processor, Thunderbolt 2, great built-in apps, and all-day battery life.* It’s thin, light, and durable enough to take everywhere you go—and powerful enough to do everything once you get there.
        ",
    quantity: 12
},
{
    title: "Dryer",
    product_type_id: "3",
    type: "" ,
    price: 349.66,
    delivery: "true",
    user_id: 9,
    description: "Samsung’s activewash™ Top Dryer with 5.2 cu. ft. capacity allows for large loads so you can spend less time doing laundry. With 5 drying cycles and wrinkle prevention, you can dry clothes with ease.",
    quantity: 11
},
{
    title: "Washer",
    product_type_id: "3",
    type: "" ,
    price: 177.66,
    delivery: "true",
    user_id: 9,
    description: "Samsung’s activewash™ Top Load Washer with 5.2 cu. ft. capacity allows for larger loads so you can spend less time doing laundry. The built-in sink lets you pre-treat and pre-soak your clothes with ease, while Super Speed technology lets you power through laundry day 35% faster without sacrificing cleaning performance. With Vibration Reduction Technology, wash loads stays balanced and quiet even at high speeds.",
    quantity: 11
}])




# creates new records for product_types
ProductType.create!([{
    id: "1",
    category: "Sporting Goods",
},
{
    id: "2",
    category: "Furniture",
},
{
    id: "3",
    category: "Hardware",
},
{
    id: "4",
    category: "Automotive",
},
{
    id: "5",
    category: "Outdoor Rec",
},
{
    id: "6",
    category: "Electronics",
},
{
    id: "7",
    category: "Appliances",
}])

#prints out the total count for Users and Products tables
p "Created #{Product.count} products"
p "Created #{User.count} users"
p "Created #{ProductType.count} product_types"
