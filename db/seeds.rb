Product.create(name: "Ant Man's Big Christmas #1 Dynamic Forces limited edition", price: 15.25, description: Faker::Lorem.sentence(12))
Product.create(name: 'SPIDER-MAN FAMILY #1 LIMITED DYNAMIC FORCES EDITION SIGNED JOHN ROMITA SR,', price: 23.45, description: Faker::Lorem.sentence(12))
Product.create(name: 'Garfield Listens to His Gut: His 62nd Book', price: 65.87, description: Faker::Lorem.sentence(12))
Product.create(name: 'Attack of the Deranged Mutant Killer Monster Snow Goons: A Calvin and Hobbes Collection', price: 35.67, description: Faker::Lorem.sentence(12))
Product.create(name: 'Donkey Kong: The Funniest Donkey Kong Jokes & Memes', price: 22.3, description: Faker::Lorem.sentence(12))
Product.create(name: 'The Adventures of the Crocodile Surfer No.2: Sugar Glider', price: 12.3, description: Faker::Lorem.sentence(12))
Product.create(name: "Big Mushy Happy Lump: A Sarah's Scribbles Collection", price: 34.7, description: Faker::Lorem.sentence(12))
Product.create(name: 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', price: 45.67, description: Faker::Lorem.sentence(12))
Product.create(name: 'Dog eat Doug Volume 7: The Seventh Collection of Comic Strips', price: 67.8, description: Faker::Lorem.sentence(12))
Product.create(name: 'Thoughts From Iceland: Complete Collection', price: 12.4, description: Faker::Lorem.sentence(12))
Product.create(name: '5 Very Good Reasons to Punch a Dolphin in the Mouth (And Other Useful Guides) (The Oatmeal)', price: 78.45, description: Faker::Lorem.sentence(12))
Product.create(name: 'We Learn Nothing: Essays and Cartoons', price: 56.78, description: Faker::Lorem.sentence(12))
Product.create(name: 'Garfield Throws His Weight Around: His 33rd Book', price: 12.34, description: Faker::Lorem.sentence(12))

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(10, 20, true, true))
end

Product.all.each do |prod|
  3.times do
    Comment.create(author: Faker::Name.name, text: Faker::Lorem.sentence(12), product_id: prod.id)
  end
end

# Comment.create(author: )
