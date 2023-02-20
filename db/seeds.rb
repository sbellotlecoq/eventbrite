# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

nb_user = 10
users = []

nb_user.times do |x|
    user = User.create!(
			email: "pcb973@yopmail.com",
			encrypted_password: "password",
			description "je suis un utilisateur test",
			first_name: Faker::Books::Dune.planet,
			last_name: Faker::Books::Dune.city,
			puts "utilisateur seedé n°#{x}"
    )
end


