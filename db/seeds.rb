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
        "https://randomfox.ca/images/103.jpg", "https://randomfox.ca/images/48.jpg", "https://randomfox.ca/images/28.jpg", "https://randomfox.ca/images/7.jpg",
        "https://randomfox.ca/images/15.jpg","https://randomfox.ca/images/20.jpg","https://randomfox.ca/images/105.jpg","https://randomfox.ca/images/80.jpg",
        "https://randomfox.ca/images/60.jpg","https://randomfox.ca/images/54.jpg","https://randomfox.ca/images/33.jpg","https://randomfox.ca/images/42.jpg",
        "https://randomfox.ca/images/99.jpg", "https://randomfox.ca/images/17.jpg", "https://randomfox.ca/images/48.jpg", "https://randomfox.ca/images/1.jpg", 
        "https://randomfox.ca/images/66.jpg", "https://randomfox.ca/images/111.jpg", "https://randomfox.ca/images/55.jpg","https://randomfox.ca/images/22.jpg",
        "https://randomfox.ca/images/58.jpg","https://randomfox.ca/images/12.jpg","https://randomfox.ca/images/49.jpg","https://randomfox.ca/images/35.jpg",
        "https://randomfox.ca/images/70.jpg","https://randomfox.ca/images/19.jpg","https://randomfox.ca/images/6.jpg"
    ].sample

    toy = ['beach ball', 'kiddie pools', 'tunnel', 'squeakers', 'tennis ball', 'puzzle feeder', 'sandbox'].sample

    personality = ['timid', 'irritable', 'overly-friendly', 'loving', 'talkative', 'high-energy', 'lazy', 'sassy', 'mischevious','observant', 'curious', 'needy'].sample

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

