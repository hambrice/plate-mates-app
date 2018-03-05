# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
user = User.first
recipe1 = user.recipes.create(name: "Homemade Ice Cream", prep_time: 120, cook_time: 20, category: "Frozen", instructions: "In a small pot, simmer heavy cream, milk, sugar and salt until sugar completely dissolves, about 5 minutes. Remove pot from heat. In a separate bowl, whisk yolks. Whisking constantly, slowly whisk about a third of the hot cream into the yolks, then whisk the yolk mixture back into the pot with the cream. Return pot to medium-low heat and gently cook until mixture is thick enough to coat the back of a spoon (about 170 degrees on an instant-read thermometer). Strain through a fine-mesh sieve into a bowl. Cool mixture to room temperature. Cover and chill at least 4 hours or overnight. Churn in an ice cream machine according to manufacturers’ instructions. Serve directly from the machine for soft serve, or store in freezer until needed.")
recipe1.ingredients = [
Ingredient.create(name: "heavy cream", quantity: "2 cups"),
Ingredient.create(name: "whole milk", quantity: "1 cup"),
Ingredient.create(name: "sugar", quantity: "2/3 cup"),
Ingredient.create(name: "sea salt", quantity: "1/8 teaspoon"),
Ingredient.create(name: "large egg yolks", quantity: "6")]

recipe2 = user.recipes.create(name: "Homemade Gelato", prep_time: 60, cook_time: 120, category: "Frozen", instructions: "In a medium saucepan, mix milk and cream. Warm until foam forms around the edges. Remove from heat.
In a large bowl, beat the egg yolks and sugar until frothy. Gradually pour the warm milk into the egg yolks, whisking constantly. Return mixture to saucepan; cook over medium heat, stirring with a wooden spoon until the mixture gels slightly and coats the back of the spoon. If small egg lumps begin to show, remove from heat immediately.
Pour the mixture through a sieve or fine strainer into a bowl. Cover, and chill for several hours or overnight.
Pour the mixture into an ice cream maker, and freeze according to the manufacturer's instructions. Transfer to a sealed container, and freeze until firm. If the gelato is too firm, place it in the refrigerator until it reaches the desired consistency.")
recipe2.ingredients = [
Ingredient.create(name: "heavy cream", quantity: "1 cup"),
Ingredient.create(name: "whole milk", quantity: "2 cup"),
Ingredient.create(name: "sugar", quantity: "1/4 cup"),
Ingredient.create(name: "large egg yolks", quantity: "4")]

recipe3 = user.recipes.create(name: "Chocolate-Covered Oreo Cookie Cake", prep_time: 20, cook_time: 60, category: "Cake", instructions: "Heat oven to 350 degrees F.
Prepare cake batter and bake in 2 (9-inch) round pans as directed on package. Cool cakes in pans 10 min. Invert onto wire racks; gently remove pans. Cool cakes completely.
Microwave chocolate and butter in small microwaveable bowl on HIGH 2 min. or until butter is melted. Stir until chocolate is completely melted. Cool 5 min. Meanwhile, beat cream cheese and sugar in large bowl with mixer until blended. Gently stir in COOL WHIP and crushed cookies.
Place 1 cake layer on plate, spread with cream cheese mixture. Top with remaining cake layer. Spread top with chocolate glaze; let stand 10 min. or until firm. Keep refrigerated.")
recipe3.ingredients = [
Ingredient.create(name: "devil's food chocolate cake mix", quantity: "1 package"),
Ingredient.create(name: "baker's semi-sweet chocolate", quantity: "4 squares"),
Ingredient.create(name: "butter", quantity: "1/4 cup"),
Ingredient.create(name: "sugar", quantity: "1/2 cup"),
Ingredient.create(name: "cool whip whipped topping", quantity: "2 cup"),
Ingredient.create(name: "oreo cookies, coarsely crushed", quantity: "12"),
Ingredient.create(name: "cream cheese", quantity: "1 package")]

recipe4 = user.recipes.create(name: "White Chocolate Pound Cake", prep_time: 20, cook_time: 60, category: "Cake", instructions: "Preheat oven to 350 degrees (175 degrees C). Grease one 10 inch bundt pan. Sprinkle 2 tablespoons of white sugar in the bundt pan.
Chop four squares of the white chocolate and melted 4 of the others. Set aside.
In a mixing bowl, cream butter and 2 cups of the sugar until light and fluffy, about 5 minutes. Add eggs, one at a time, beating well after each addition. Stir in extracts and the melted white chocolate.
Combine flour, baking powder, salt and baking soda; add to the creamed mixture alternately with the sour cream. Beat just until combined.
Pour 1/3 of the batter into the prepared pan and sprinkle with 1/2 of the chopped white chocolate. Repeat. Pour remaining batter on top.
Bake at 350 degrees F (175 degrees C) for 55 to 60 minutes or until a knife inserted near the center comes out clean. Melt chocolate in the top of two double boilers or in bowls in the microwave. Stir until smooth. Set aside to cool.
Let cake cool in pan for 10 minutes then remove from pan and let cool on a wire rack completely. Once cool place cake on a serving dish and drizzle with melted white and semisweet chocolate. Garnish with strawberries, if desired.")
recipe4.ingredients = [
Ingredient.create(name: "white sugar", quantity: "2 tablespoons"),
Ingredient.create(name: "white chocolate", quantity: "8 squares"),
Ingredient.create(name: "butter", quantity: "1 cup"),
Ingredient.create(name: "eggs", quantity: "2"),
Ingredient.create(name: "vanilla extract", quantity: "2 teaspoons"),
Ingredient.create(name: "almond extract", quantity: "1/2 teaspoon"),
Ingredient.create(name: "flour", quantity: "3 cups")]

recipe5 = user.recipes.create(name: "Chewy Sugar Cookies", prep_time: 10, cook_time: 15, category: "Cookie", instructions: "Preheat oven to 350 degrees F (175 degrees C). In a medium bowl, stir together the flour, baking soda, and salt; set aside.
In a large bowl, cream together the margarine and 2 cups sugar until light and fluffy. Beat in the eggs one at a time, then the vanilla. Gradually stir in the dry ingredients until just blended. Roll the dough into walnut sized balls and roll the balls in remaining 1/4 cup of sugar. Place cookies 2 inches apart onto ungreased cookie sheets and flatten slightly.
Bake for 8 to 10 minutes in the preheated oven, until lightly browned at the edges. Allow cookies to cool on baking sheet for 5 minutes before removing to a wire rack to cool completely.")
recipe5.ingredients = [
Ingredient.create(name: "flour", quantity: "2 cups"),
Ingredient.create(name: "baking soda", quantity: "1 teaspoon"),
Ingredient.create(name: "salt", quantity: "1/2 teaspoon"),
Ingredient.create(name: "margarine", quantity: "1/4 cups"),
Ingredient.create(name: "white sugar", quantity: "2 cups"),
Ingredient.create(name: "eggs", quantity: "2"),
Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe6 = user.recipes.create(name: "Breakfast Cookies", prep_time: 10, cook_time: 10, category: "Cookie", instructions: "Preheat oven to 325 degrees F (165 degrees C). Spray 2 baking sheets with cooking spray.
Whisk oats, pastry flour, flax meal, cinnamon, salt, and baking soda together in a large bowl. Stir honey, egg whites, almond butter, and vanilla extract into oats mixture until dough is well-blended; mix in chocolate chips. Scoop dough into 36 balls and place on prepared baking sheets.
Bake in the preheated oven until lightly golden and set, 8 to 10 minutes. Cool on the baking sheet for 10 minutes, lightly loosen each cookie from the baking sheet, and continue cooling on the baking sheets for another 10 minutes.")
recipe6.ingredients = [
Ingredient.create(name: "rolled oats", quantity: "2 cups"),
Ingredient.create(name: "whole wheat pastry flour", quantity: "1 cup"),
Ingredient.create(name: "flax seed meal", quantity: "1/2 cup"),
Ingredient.create(name: "ground cinnamon", quantity: "2 teaspoons"),
Ingredient.create(name: "sea salt", quantity: "2 teaspoons"),
Ingredient.create(name: "eggs", quantity: "2"),
Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe7 = user.recipes.create(name: "Pumpkin Pie", prep_time: 15, cook_time: 55, category: "Pie", instructions: "Preheat oven to 425 degrees F. Whisk pumpkin, sweetened condensed milk, eggs, spices and salt in medium bowl until smooth. Pour into crust. Bake 15 minutes.
Reduce oven temperature to 350 degrees F and continue baking 35 to 40 minutes or until knife inserted 1 inch from crust comes out clean. Cool. Garnish as desired. Store leftovers covered in refrigerator.")
recipe7.ingredients = [
Ingredient.create(name: "pumpkin", quantity: "1 can"),
Ingredient.create(name: "sweetened condensed milk", quantity: "1 can"),
Ingredient.create(name: "ground ginger", quantity: "1/2 teaspoon"),
Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
Ingredient.create(name: "large eggs", quantity: "2"),
Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe8 = user.recipes.create(name: "Coconut Tarts", prep_time: 15, cook_time: 20, category: "Pie", instructions: "reheat oven to 375 degrees F (190 degrees C). Place frozen mini tart shells on a baking sheet.
Beat the butter, sugar, egg, evaporated milk, and vanilla extract, mixing until fully combined. Stir in the coconut. Place 1/2 teaspoon of jam into each mini tart shell, and fill the shells with about 1 tablespoon of the coconut mixture.
Bake in the preheated oven until the shells and topping are lightly golden brown, about 20 minutes. Cool on wire rack.")
recipe8.ingredients = [
Ingredient.create(name: "frozen mini tart shells", quantity: "12"),
Ingredient.create(name: "melted butter", quantity: "1/4 cup"),
Ingredient.create(name: "white sugar", quantity: "1/2 cup"),
Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
Ingredient.create(name: "large eggs", quantity: "2"),
Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe9 = user.recipes.create(name: "Chocolate Fudge", prep_time: 10, cook_time: 120, category: "Candy", instructions: "In heavy saucepan, over low heat, melt chocolate chips with sweetened condensed milk and salt. Remove from heat; stir in nuts (optional) and vanilla.
Spread evenly into wax-paper-lined 8- or 9-inch square pan. Chill 2 hours or until firm.
Life fudge out of pan and place onto cutting board; peel off paper and cut into squares. Store covered in refrigerator.")
recipe9.ingredients = [
Ingredient.create(name: "semi-sweet chocolate chips", quantity: "3 cups"),
Ingredient.create(name: "sweetened condensed milk", quantity: "1 can"),
Ingredient.create(name: "chopped nuts", quantity: "3/4 cup"),
Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe10 = user.recipes.create(name: "Pretzel Turtles", prep_time: 10, cook_time: 4, category: "Candy", instructions: "Preheat oven to 300 degrees F (150 degrees C).
Arrange the pretzels in a single layer on a parchment lined cookie sheet. Place one chocolate covered caramel candy on each pretzel.
Bake for 4 minutes. While the candy is warm, press a pecan half onto each candy covered pretzel. Cool completely before storing in an airtight container.")
recipe10.ingredients = [
Ingredient.create(name: "small mini pretzels", quantity: "20"),
Ingredient.create(name: "chocolate covered caramel candies", quantity: "20"),
Ingredient.create(name: "pecan halves", quantity: "20")]

recipe11 = user.recipes.create(name: "Apple Turnovers", prep_time: 30, cook_time: 25, category: "Pastry", instructions: "Combine the lemon and 4 cups water in a large bowl. Place the sliced apples in the water to keep them from browning.
Melt butter in a large skillet over medium heat. Drain water from apples, and place them into the hot skillet. Cook and stir for about 2 minutes. Add brown sugar, and cinnamon, and cook, stirring, for 2 more minutes. Stir together cornstarch and 1 tablespoon water. Pour into the skillet, and mix well. Cook for another minute, or until sauce has thickened. Remove from heat to cool slightly.
Preheat the oven to 400 degrees F (200 degrees C).
Unfold puff pastry sheets, and repair any cracks by pressing them back together. Trim each sheet into a square. Then cut each larger square into 4 smaller squares. Spoon apples onto the center of each squares. Fold over from corner to corner into a triangle shape, and press edges together to seal. Place turnovers on a baking sheet, leaving about 1 inch between them.
Bake for 25 minutes in the preheated oven, until turnovers are puffed and lightly browned. Cool completely before glazing.
To make the glaze, mix together the confectioners' sugar, milk and vanilla in a small bowl. Adjust the thickness by adding more sugar or milk if necessary. Drizzle glaze over the cooled turnovers.")
recipe11.ingredients = [
Ingredient.create(name: "lemon juice", quantity: "2 tablespoons"),
Ingredient.create(name: "water", quantity: "4 cups"),
Ingredient.create(name: "Granny Smith apples", quantity: "4"),
Ingredient.create(name: "butter", quantity: "2 tablespoons"),
Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
Ingredient.create(name: "brown sugar", quantity: "1 cup"),
Ingredient.create(name: "cornstarch", quantity: "1 tablespoon")]
