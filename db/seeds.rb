# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.destroy_all
# Recipe.destroy_all
# RecipeIngredient.destroy_all

user1 = User.create(first_name: "Bob", last_name: "Johnson", email: "bob@gmail.com", password:"547623")
recipe1 = user1.recipes.build(name: "Chicken Marsalla",)

recipe1.add_ingredient("Chicken", "8oz")
recipe1.add_ingredient("Marshmallows", "18")
