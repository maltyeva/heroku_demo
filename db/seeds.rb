# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.delete_all

urls = ["http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png", "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"]




5.times do
  Article.create(title: Faker::Friends.character,
                 body: Faker::FamousLastWords.last_words,
                 remote_photo_url: urls.sample )
  puts "created article #{Article.count}"
end
