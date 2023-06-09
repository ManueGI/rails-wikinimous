# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require_relative "../app/models/article"
require 'active_record'

puts 'Creating posts...'
10.times do
  article = Article.new(title: Faker::TvShows::RuPaul.queen, content: Faker::Movies::LordOfTheRings.location)
  article.save!
end

puts 'Finished!'
