# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

# destroy all
User.destroy_all
Article.destroy_all


# User create
10.times do |i|
    name = Faker::Name.name
    User.create(
        name:name,
        email:"#{name}@live.fr",
        age:rand(20..40)
    )
    puts "*"*i
end


# Article create
30.times do |i|
    Article.create(
        title:Faker::Lorem.word,
        content:Faker::Lorem.sentence(word_count: 30),
        user_id:User.all.sample.id
    )
    puts "*"*i
end