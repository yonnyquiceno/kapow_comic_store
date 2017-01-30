Product.create(image1:"http://static1.gamespot.com/uploads/original/1562/15626911/2991050-4996630-04-variant.jpg", name: "Ant Man's Big Christmas #1 Dynamic Forces limited edition", price: 15.25, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/236x/cb/6b/ac/cb6bac6ffae8f510202f3c5e37b621aa.jpg", name: 'SPIDER-MAN FAMILY #1 LIMITED DYNAMIC FORCES EDITION SIGNED JOHN ROMITA SR,', price: 23.45, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://i.annihil.us/u/prod/marvel/i/mg/1/00/5029570997db4/portrait_incredible.jpg", name: 'Garfield Listens to His Gut: His 62nd Book', price: 65.87, description: Faker::Lorem.sentence(12))
Product.create(image1:"http://www.covernk.com/Covers/L/B/Batman%20Gotham%20Adventures/batmangothamadventures31.jpg", name: 'Attack of the Deranged Mutant Killer Monster Snow Goons: A Calvin and Hobbes Collection', price: 35.67, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/564x/76/94/4d/76944d6bf03763b9b6b6ced4b04c2551.jpg", name: 'Donkey Kong: The Funniest Donkey Kong Jokes & Memes', price: 22.3, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/originals/6d/b5/ac/6db5ac8ea1a5d4dfd57409cd696ff17e.jpg", name: 'The Adventures of the Crocodile Surfer No.2: Sugar Glider', price: 12.3, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/originals/ed/d4/c1/edd4c1a752305f8f3bb9c2b34913728e.jpg", name: "Big Mushy Happy Lump: A Sarah's Scribbles Collection", price: 34.7, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/originals/28/3f/f3/283ff30a3c7da650c2679feeab534773.jpg", name: 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', price: 45.67, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://s-media-cache-ak0.pinimg.com/564x/1e/13/51/1e13510183b452e2f1bfe37aabbbb76e.jpg", name: 'Dog eat Doug Volume 7: The Seventh Collection of Comic Strips', price: 67.8, description: Faker::Lorem.sentence(12))
Product.create(image1:"http://kirbymuseum.org/blogs/kirby/wp-content/uploads/sites/8/2006/12/AvengersThe1561977C.jpg", name: 'Thoughts From Iceland: Complete Collection', price: 12.4, description: Faker::Lorem.sentence(12))
Product.create(image1:"http://excelsior.universomarvel.com/era_marvel/imagenes/av1001.jpg", name: '5 Very Good Reasons to Punch a Dolphin in the Mouth (And Other Useful Guides) (The Oatmeal)', price: 78.45, description: Faker::Lorem.sentence(12))
Product.create(image1:"https://4.bp.blogspot.com/-xiwMeD0ZDbA/TXVRPl620qI/AAAAAAAAEMo/_0VG41aYxuE/s1600/Captain_Marvel_30-01-FC.jpg", name: 'We Learn Nothing: Essays and Cartoons', price: 56.78, description: Faker::Lorem.sentence(12))
Product.create(image1:"http://cdn.pastemagazine.com/www/articles/2015/08/06/FantasticFour_82.jpg", name: 'Garfield Throws His Weight Around: His 33rd Book', price: 12.34, description: Faker::Lorem.sentence(12))

10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password(10, 20, true, true))
end

Product.all.each do |prod|
  3.times do
    Comment.create(author: Faker::Name.name, text: Faker::Lorem.sentence(12), product_id: prod.id)
  end
end

# Comment.create(author: )
