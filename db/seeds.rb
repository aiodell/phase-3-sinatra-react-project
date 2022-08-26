Fox.destroy_all
Sponsor.destroy_all

puts "🌱 Seeding Sponsors..."

5.times do
    Sponsor.create(
                    name: Faker::Name.name,
                    image_url: 'https://pbs.twimg.com/profile_images/1375531284114644993/Eud7AHJ5_400x400.jpg',
                    location: Faker::Address.state,
                  )
end

puts "🌱 Seeding foxes..."

# create foxes


15.times do 

    fox_img = [
        "https://randomfox.ca/images/103.jpg", "https://randomfox.ca/images/104.jpg", "https://randomfox.ca/images/28.jpg", "https://randomfox.ca/images/7.jpg",
        "https://randomfox.ca/images/15.jpg","https://randomfox.ca/images/20.jpg","https://randomfox.ca/images/105.jpg","https://randomfox.ca/images/9.jpg",
        "https://randomfox.ca/images/60.jpg","https://randomfox.ca/images/59.jpg","https://randomfox.ca/images/33.jpg","https://randomfox.ca/images/42.jpg",
        "https://randomfox.ca/images/99.jpg", "https://randomfox.ca/images/62.jpg", "https://randomfox.ca/images/21.jpg", "https://randomfox.ca/images/1.jpg", 
        "https://randomfox.ca/images/66.jpg", "https://randomfox.ca/images/41.jpg", "https://randomfox.ca/images/55.jpg","https://randomfox.ca/images/22.jpg",
        "https://randomfox.ca/images/58.jpg","https://randomfox.ca/images/12.jpg","https://randomfox.ca/images/49.jpg","https://randomfox.ca/images/35.jpg",
        "https://randomfox.ca/images/40.jpg","https://randomfox.ca/images/19.jpg","https://randomfox.ca/images/6.jpg", "https://randomfox.ca/images/14.jpg"
    ].sample

    toy = ['Beach Ball', 'Kiddie Pool', 'Tunnel', 'Squeakers', 'Tennis Ball', 'Puzzle Feeder', 'Sandbox'].sample

    personality = ['Timid', 'Irritable', 'Overly-friendly', 'Loving', 'Talkative', 'High-energy', 'Lazy', 'Sassy', 'Mischevious','Observant', 'Curious', 'Needy'].sample

    age = ["1","2","3","4","5","6","7","8","9","10"].sample
    # seed fox

    Fox.create(
            name: Faker::FunnyName.name,
            age: age,
            favorite_toy: toy,
            personality: personality,
            image_url: fox_img,
            sponsor_id: rand(1..5),
            )
end

puts "✅ Done seeding!"

