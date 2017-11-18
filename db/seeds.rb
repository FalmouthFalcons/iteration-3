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


# Product.destroy_all

#creates new records for products table
Product.create!([{
    title: "Bicycle",
    category: "Sporting Goods",
    type: "",
    price: 122.66, 
    delivery: "true",
    user_id: 1,
    city: "Nashville",
    description: "Head for the open trails on the Huffy Men's Alpine 26 18-Speed Mountain Bike. Built with a rugged steel hardtail frame and knobby tires with weather-resistant alloy rims, this mountain bike makes changing gears a breeze thanks to its Enzo twist-shifting system.
    
    Features and Benefits
    
    Rugged steel hardtail frame stands up to rough trail conditions
    26 x 1.95 knobby tires with weather-resistant alloy rims
    Steel linear pull brakes ensure reliable stopping
    6-speed index derailleur with the Enzo twist-shifting system for easy gear changes
    Kolo 1200 suspension fork"
},
{
    title: "Sofa",
    category: "Furniture",
    type: "" ,
    price: 324.66, 
    delivery: "true", 
    user_id: 1,
    city: "St Louis",
    description: "Talk about fine lines and great curves. That’s the beauty of the Darcy sofa—made to suit your appreciation for clean, contemporary style. A striking flared frame, comfy pillow top armrests and an ultra-soft upholstery that holds up to everyday living complete this fashion statement."
},
{
    title: "Lawnmower",
    category: "Hardware",
    type: "" ,
    price: 99.00, 
    delivery: "true", 
    user_id: 1, 
    city: "Chicago",
    description: "26 in. 208cc Walk Behind Mower w/Electric Start, Self Propelled, Spin-On Oil Filter, Variable Speed w/Blade Brake Clutch"
},
{
    title: "Oil Filter",
    category: "Automotive",
    type: "" ,
    price: 24.66, 
    delivery: "true", 
    user_id: 1,
    city: "Miami",
    description: "TP Extended Life Oil Filters provide maximum protection for your vehicle's engine. Its superior synthetic resin media traps contaminates with 99% efficiency over the life of the filter Engineered to provide 10,000 Miles of engine protection, when used with synthetic oil"
},
{
    title: "Boat",
    category: "Outdoor Rec",
    type: "" ,
    price: 1324.66, 
    delivery: "true", 
    user_id: 1,
    city: "Boston",
    description: "RP has revealed an all-new platform for its full-sized Sea-Doo personal watercraft line. Designed to be more stable and offer new storage and convenience features, including an audio system, the new three-passenger platform will support seven 2018 models in the Sea-Doo GTX, RTX and Wake product lines.
    "
},
{
    title: "Computer",
    category: "Electronics",
    type: "" ,
    price: 1224.66, 
    delivery: "true", 
    user_id: 1,
    city: "Charoltte",
    description: "The 13-inch MacBook Air features 8GB of memory, a fifth-generation Intel Core processor, Thunderbolt 2, great built-in apps, and all-day battery life.* It’s thin, light, and durable enough to take everywhere you go—and powerful enough to do everything once you get there.
        "
},
{
    title: "Washer",
    category: "Appliances",
    type: "" ,
    price: 177.66, 
    delivery: "true", 
    user_id: 1,
    city: "Knoxville",
    description: "Samsung’s activewash™ Top Load Washer with 5.2 cu. ft. capacity allows for larger loads so you can spend less time doing laundry. The built-in sink lets you pre-treat and pre-soak your clothes with ease, while Super Speed technology lets you power through laundry day 35% faster without sacrificing cleaning performance. With Vibration Reduction Technology, wash loads stays balanced and quiet even at high speeds."
}])


# creates a user so that new users will not get error
User.create!([{
    email: "user@gmail.com",
    password_digest: "$2a$10$ulnrKuQosY8upITqdSOIj.S7uL5q8JAmaP/9yy3R4IvbyrhSt427a"
}])

#prints out the total count for Users and Products tables
p "Created #{Product.count} products"
p "Created #{User.count} users"