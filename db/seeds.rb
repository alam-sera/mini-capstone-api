
50.times do 
  Product.create({
  name: Faker::Games::Pokemon.name,
  price: Faker::Number.decimal(l_digits: 3, r_digits: 3),
  image_url: "", 
  description: Faker::Games::Pokemon.location 
}
).save
end 