
puts 'Cleaning the database'

Restaurant.destroy_all

puts 'Creating Restaurants...'

5.times do 
    restaurant = Restaurant.new(
        name: Faker::Name.name, 
        address: Faker::Address.street_address ,
        phone_number: Faker::PhoneNumber.cell_phone,
        category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
    restaurant.save!
end

puts "Created #{Restaurant.count} restaurants"
