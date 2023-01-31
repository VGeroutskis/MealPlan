# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
exit if !Rails.env.development?

puts "Deleting the Data"
Recipe.delete_all
User.delete_all
MealPlan.delete_all

puts "Creating User"
user = FactoryBot.create(:user, email: "test@example.com", encrypted_password: "$2a$12$gl6LCUOUY/l8Cs0dBznMCeubhS/GRDonXQ.rPl2iI8dD6frZlAUlK")

puts "Creating Recipes"
20.times do
    FactoryBot.create(:recipe, user: user)
end