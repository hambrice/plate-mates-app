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
user2 = User.last
recipe1 = user.created_recipes.create(name: "Homemade Ice Cream", image:"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2014/6/27/1/FN_Homemade-Vanilla-Ice-Cream_s4x3.jpg.rend.hgtvcom.616.462.suffix/1403925376013.jpeg", prep_time: 120, cook_time: 20, category: "Frozen", instructions: "In a small pot, simmer heavy cream, milk, sugar and salt until sugar completely dissolves, about 5 minutes. Remove pot from heat. In a separate bowl, whisk yolks. Whisking constantly, slowly whisk about a third of the hot cream into the yolks, then whisk the yolk mixture back into the pot with the cream. Return pot to medium-low heat and gently cook until mixture is thick enough to coat the back of a spoon (about 170 degrees on an instant-read thermometer). Strain through a fine-mesh sieve into a bowl. Cool mixture to room temperature. Cover and chill at least 4 hours or overnight. Churn in an ice cream machine according to manufacturers’ instructions. Serve directly from the machine for soft serve, or store in freezer until needed.",
ingredients_attributes:
  {0 => {name: "heavy cream", recipe_ingredients: {quantity: "2 cups"}},
  1 => {name: "whole milk", recipe_ingredients: {quantity: "1 cup"}},
  2 => {name: "sugar", recipe_ingredients: {quantity: "2/3 cups"}},
  3 => {name: "sea salt", recipe_ingredients: {quantity: "1/8 teaspoon"}},
  4 => {name: "large egg yolks", recipe_ingredients: {quantity: "6"}}})
# recipe1.ingredients = [
# Ingredient.create(name: "heavy cream", quantity: "2 cups"),
# Ingredient.create(name: "whole milk", quantity: "1 cup"),
# Ingredient.create(name: "sugar", quantity: "2/3 cup"),
# Ingredient.create(name: "sea salt", quantity: "1/8 teaspoon"),
# Ingredient.create(name: "large egg yolks", quantity: "6")]

recipe2 = user.created_recipes.create(name: "Homemade Gelato", image:"https://i.ytimg.com/vi/LVtRrvmSJ8M/maxresdefault.jpg", prep_time: 60, cook_time: 120, category: "Frozen", instructions: "In a medium saucepan, mix milk and cream. Warm until foam forms around the edges. Remove from heat.
In a large bowl, beat the egg yolks and sugar until frothy. Gradually pour the warm milk into the egg yolks, whisking constantly. Return mixture to saucepan; cook over medium heat, stirring with a wooden spoon until the mixture gels slightly and coats the back of the spoon. If small egg lumps begin to show, remove from heat immediately.
Pour the mixture through a sieve or fine strainer into a bowl. Cover, and chill for several hours or overnight.
Pour the mixture into an ice cream maker, and freeze according to the manufacturer's instructions. Transfer to a sealed container, and freeze until firm. If the gelato is too firm, place it in the refrigerator until it reaches the desired consistency.",
ingredients_attributes:
  {0 => {name: "heavy cream", recipe_ingredients: {quantity: "1 cup"}},
  1 => {name: "whole milk", recipe_ingredients: {quantity: "2 cups"}},
  2 => {name: "sugar", recipe_ingredients: {quantity: "1/4 cup"}},
  3 => {name: "large egg yolks", recipe_ingredients: {quantity: "4"}}})
# recipe2.ingredients = [
# Ingredient.create(name: "heavy cream", quantity: "1 cup"),
# Ingredient.create(name: "whole milk", quantity: "2 cup"),
# Ingredient.create(name: "sugar", quantity: "1/4 cup"),
# Ingredient.create(name: "large egg yolks", quantity: "4")]

recipe3 = user.created_recipes.create(name: "Chocolate-Covered Oreo Cookie Cake", image:"https://images.media-allrecipes.com/userphotos/250x250/960065.jpg", prep_time: 20, cook_time: 60, category: "Cake", instructions: "Heat oven to 350 degrees F.
Prepare cake batter and bake in 2 (9-inch) round pans as directed on package. Cool cakes in pans 10 min. Invert onto wire racks; gently remove pans. Cool cakes completely.
Microwave chocolate and butter in small microwaveable bowl on HIGH 2 min. or until butter is melted. Stir until chocolate is completely melted. Cool 5 min. Meanwhile, beat cream cheese and sugar in large bowl with mixer until blended. Gently stir in COOL WHIP and crushed cookies.
Place 1 cake layer on plate, spread with cream cheese mixture. Top with remaining cake layer. Spread top with chocolate glaze; let stand 10 min. or until firm. Keep refrigerated.",
ingredients_attributes:
  {0 => {name: "devil's food chocolate cake mix", recipe_ingredients: {quantity: "1 package"}},
  1 => {name: "baker's semi-sweet chocolate", recipe_ingredients: {quantity: "4 squares"}},
  2 => {name: "butter", recipe_ingredients: {quantity: "1/4 cup"}},
  3 => {name: "sugar", recipe_ingredients: {quantity: "1/2 cup"}},
  4 => {name: "cool whip whipped topping", recipe_ingredients: {quantity: "2 cups"}},
  5 => {name: "oreo cookies,coarsely crushed", recipe_ingredients: {quantity: "12"}},
  6 => {name: "cream cheese", recipe_ingredients: {quantity: "1 package"}}})
# recipe3.ingredients = [
# Ingredient.create(name: "devil's food chocolate cake mix", quantity: "1 package"),
# Ingredient.create(name: "baker's semi-sweet chocolate", quantity: "4 squares"),
# Ingredient.create(name: "butter", quantity: "1/4 cup"),
# Ingredient.create(name: "sugar", quantity: "1/2 cup"),
# Ingredient.create(name: "cool whip whipped topping", quantity: "2 cup"),
# Ingredient.create(name: "oreo cookies, coarsely crushed", quantity: "12"),
# Ingredient.create(name: "cream cheese", quantity: "1 package")]

recipe4 = user.created_recipes.create(name: "White Chocolate Pound Cake", image:"http://assets.kraftfoods.com/recipe_images/opendeploy/504576_1_1_retail-c5792d6389255fa613fbe33a55fc64a17423dc82_642x428.jpg", prep_time: 20, cook_time: 60, category: "Cake", instructions: "Preheat oven to 350 degrees (175 degrees C). Grease one 10 inch bundt pan. Sprinkle 2 tablespoons of white sugar in the bundt pan.
Chop four squares of the white chocolate and melted 4 of the others. Set aside.
In a mixing bowl, cream butter and 2 cups of the sugar until light and fluffy, about 5 minutes. Add eggs, one at a time, beating well after each addition. Stir in extracts and the melted white chocolate.
Combine flour, baking powder, salt and baking soda; add to the creamed mixture alternately with the sour cream. Beat just until combined.
Pour 1/3 of the batter into the prepared pan and sprinkle with 1/2 of the chopped white chocolate. Repeat. Pour remaining batter on top.
Bake at 350 degrees F (175 degrees C) for 55 to 60 minutes or until a knife inserted near the center comes out clean. Melt chocolate in the top of two double boilers or in bowls in the microwave. Stir until smooth. Set aside to cool.
Let cake cool in pan for 10 minutes then remove from pan and let cool on a wire rack completely. Once cool place cake on a serving dish and drizzle with melted white and semisweet chocolate. Garnish with strawberries, if desired.",
  ingredients_attributes:
    {0 => {name: "white sugar", recipe_ingredients: {quantity: "2 tablespoons"}},
    1 => {name: "white chocolate", recipe_ingredients: {quantity: "8 squares"}},
    2 => {name: "butter", recipe_ingredients: {quantity: "1 cup"}},
    3 => {name: "eggs", recipe_ingredients: {quantity: "2"}},
    4 => {name: "vanilla extract", recipe_ingredients: {quantity: "2 teaspoons"}},
    5 => {name: "almond extract", recipe_ingredients: {quantity: "1/2 teaspoon"}},
    6 => {name: "flour", recipe_ingredients: {quantity: "3 cups"}}})
#recipe4.ingredients = [
# Ingredient.create(name: "white sugar", quantity: "2 tablespoons"),
# Ingredient.create(name: "white chocolate", quantity: "8 squares"),
# Ingredient.create(name: "butter", quantity: "1 cup"),
# Ingredient.create(name: "eggs", quantity: "2"),
# Ingredient.create(name: "vanilla extract", quantity: "2 teaspoons"),
# Ingredient.create(name: "almond extract", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "flour", quantity: "3 cups")]

recipe5 = user.created_recipes.create(name: "Chewy Sugar Cookies", image:"https://images.media-allrecipes.com/userphotos/560x315/489452.jpg", prep_time: 10, cook_time: 15, category: "Cookie", instructions: "Preheat oven to 350 degrees F (175 degrees C). In a medium bowl, stir together the flour, baking soda, and salt; set aside.
In a large bowl, cream together the margarine and 2 cups sugar until light and fluffy. Beat in the eggs one at a time, then the vanilla. Gradually stir in the dry ingredients until just blended. Roll the dough into walnut sized balls and roll the balls in remaining 1/4 cup of sugar. Place cookies 2 inches apart onto ungreased cookie sheets and flatten slightly.
Bake for 8 to 10 minutes in the preheated oven, until lightly browned at the edges. Allow cookies to cool on baking sheet for 5 minutes before removing to a wire rack to cool completely.",
ingredients_attributes:
  {0 => {name: "flour", recipe_ingredients: {quantity: "2 tablespoons"}},
  1 => {name: "baking soda", recipe_ingredients: {quantity: "1 teaspoon"}},
  2 => {name: "salt", recipe_ingredients: {quantity: "1/2 teaspoon"}},
  3 => {name: "margarine", recipe_ingredients: {quantity: "1/4 cups"}},
  4 => {name: "white sugar", recipe_ingredients: {quantity: "2 cups"}},
  5 => {name: "eggs", recipe_ingredients: {quantity: "2"}},
  6 => {name: "vanilla extract", recipe_ingredients: {quantity: "3 teaspoons"}}})
#recipe5.ingredients = [
# Ingredient.create(name: "flour", quantity: "2 cups"),
# Ingredient.create(name: "baking soda", quantity: "1 teaspoon"),
# Ingredient.create(name: "salt", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "margarine", quantity: "1/4 cups"),
# Ingredient.create(name: "white sugar", quantity: "2 cups"),
# Ingredient.create(name: "eggs", quantity: "2"),
# Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe6 = user.created_recipes.create(name: "Breakfast Cookies", image:"https://chocolatecoveredkatie.com/wp-content/uploads/2018/01/chocolate-chip-breakfast-cookie-.jpg", prep_time: 10, cook_time: 10, category: "Cookie", instructions: "Preheat oven to 325 degrees F (165 degrees C). Spray 2 baking sheets with cooking spray.
Whisk oats, pastry flour, flax meal, cinnamon, salt, and baking soda together in a large bowl. Stir honey, egg whites, almond butter, and vanilla extract into oats mixture until dough is well-blended; mix in chocolate chips. Scoop dough into 36 balls and place on prepared baking sheets.
Bake in the preheated oven until lightly golden and set, 8 to 10 minutes. Cool on the baking sheet for 10 minutes, lightly loosen each cookie from the baking sheet, and continue cooling on the baking sheets for another 10 minutes.",
ingredients_attributes:
  {0 => {name: "rolled oats", recipe_ingredients: {quantity: "2 cups"}},
  1 => {name: "hole wheat pastry flour", recipe_ingredients: {quantity: "1 cup"}},
  2 => {name: "flax seed meal", recipe_ingredients: {quantity: "1/2 cup"}},
  3 => {name: "ground cinnamon", recipe_ingredients: {quantity: "2 teaspoons"}},
  4 => {name: "sea salt", recipe_ingredients: {quantity: "2 teaspoons"}},
  5 => {name: "eggs", recipe_ingredients: {quantity: "2"}},
  6 => {name: "vanilla extract", recipe_ingredients: {quantity: "3 teaspoons"}}})
#recipe6.ingredients = [
# Ingredient.create(name: "rolled oats", quantity: "2 cups"),
# Ingredient.create(name: "whole wheat pastry flour", quantity: "1 cup"),
# Ingredient.create(name: "flax seed meal", quantity: "1/2 cup"),
# Ingredient.create(name: "ground cinnamon", quantity: "2 teaspoons"),
# Ingredient.create(name: "sea salt", quantity: "2 teaspoons"),
# Ingredient.create(name: "eggs", quantity: "2"),
# Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe7 = user.created_recipes.create(name: "Pumpkin Pie", image:"https://www.simplyrecipes.com/wp-content/uploads/2014/11/pumpkin-pie-method-6-600x400.jpg", prep_time: 15, cook_time: 55, category: "Pie", instructions: "Preheat oven to 425 degrees F. Whisk pumpkin, sweetened condensed milk, eggs, spices and salt in medium bowl until smooth. Pour into crust. Bake 15 minutes.
Reduce oven temperature to 350 degrees F and continue baking 35 to 40 minutes or until knife inserted 1 inch from crust comes out clean. Cool. Garnish as desired. Store leftovers covered in refrigerator.",
ingredients_attributes:
  {0 => {name: "pumpkin", recipe_ingredients: {quantity: "1 can"}},
  1 => {name: "sweetened condensed milk", recipe_ingredients: {quantity: "1 can"}},
  2 => {name: "ground ginger", recipe_ingredients: {quantity: "1/2 teaspoon"}},
  3 => {name: "ground cinnamon", recipe_ingredients: {quantity: "1 teaspoon"}},
  4 => {name: "sea salt", recipe_ingredients: {quantity: "1/2 teaspoon"}},
  5 => {name: "large eggs", recipe_ingredients: {quantity: "2"}},
  6 => {name: "vanilla extract", recipe_ingredients: {quantity: "3 teaspoons"}}})
#recipe7.ingredients = [
# Ingredient.create(name: "pumpkin", quantity: "1 can"),
# Ingredient.create(name: "sweetened condensed milk", quantity: "1 can"),
# Ingredient.create(name: "ground ginger", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
# Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "large eggs", quantity: "2"),
# Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe8 = user.created_recipes.create(name: "Coconut Tarts", image:"https://lovefoodies.com/wp-content/uploads/2015/10/Chinese-Coconut-Tarts10.jpg", prep_time: 15, cook_time: 20, category: "Pie", instructions: "reheat oven to 375 degrees F (190 degrees C). Place frozen mini tart shells on a baking sheet.
Beat the butter, sugar, egg, evaporated milk, and vanilla extract, mixing until fully combined. Stir in the coconut. Place 1/2 teaspoon of jam into each mini tart shell, and fill the shells with about 1 tablespoon of the coconut mixture.
Bake in the preheated oven until the shells and topping are lightly golden brown, about 20 minutes. Cool on wire rack.",
ingredients_attributes:
  {0 => {name: "frozen mini tart shells", recipe_ingredients: {quantity: "12"}},
  1 => {name: "melted butter", recipe_ingredients: {quantity: "1/4 cup"}},
  2 => {name: "white sugar", recipe_ingredients: {quantity: "1/2 cup"}},
  3 => {name: "ground cinnamon", recipe_ingredients: {quantity: "1 teaspoon"}},
  4 => {name: "sea salt", recipe_ingredients: {quantity: "1/2 teaspoon"}},
  5 => {name: "large eggs", recipe_ingredients: {quantity: "2"}},
  6 => {name: "vanilla extract", recipe_ingredients: {quantity: "3 teaspoons"}}})
# recipe8.ingredients = [
# Ingredient.create(name: "frozen mini tart shells", quantity: "12"),
# Ingredient.create(name: "melted butter", quantity: "1/4 cup"),
# Ingredient.create(name: "white sugar", quantity: "1/2 cup"),
# Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
# Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "large eggs", quantity: "2"),
# Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe9 = user.created_recipes.create(name: "Chocolate Fudge", image: "https://assets.marthastewart.com/styles/wmax-300/d7/tvs8107/tvs8107_hd.jpg?itok=h2ilgy64", prep_time: 10, cook_time: 120, category: "Candy", instructions: "In heavy saucepan, over low heat, melt chocolate chips with sweetened condensed milk and salt. Remove from heat; stir in nuts (optional) and vanilla.
Spread evenly into wax-paper-lined 8- or 9-inch square pan. Chill 2 hours or until firm.
Life fudge out of pan and place onto cutting board; peel off paper and cut into squares. Store covered in refrigerator.",
ingredients_attributes:
  {0 => {name: "semi-sweet chocolate chips", recipe_ingredients: {quantity: "3 cups"}},
  1 => {name: "sweetened condensed milk", recipe_ingredients: {quantity: "1 can"}},
  2 => {name: "chopped nuts", recipe_ingredients: {quantity: "3/4 cups"}},
  3 => {name: "ground cinnamon", recipe_ingredients: {quantity: "1 teaspoon"}},
  4 => {name: "sea salt", recipe_ingredients: {quantity: "1/2 teaspoons"}},
  5 => {name: "vanilla extract", recipe_ingredients: {quantity: "3 teaspoons"}}})
# recipe9.ingredients = [
# Ingredient.create(name: "semi-sweet chocolate chips", quantity: "3 cups"),
# Ingredient.create(name: "sweetened condensed milk", quantity: "1 can"),
# Ingredient.create(name: "chopped nuts", quantity: "3/4 cup"),
# Ingredient.create(name: "ground cinnamon", quantity: "1 teaspoon"),
# Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "vanilla extract", quantity: "3 teaspoons")]

recipe10 = user.created_recipes.create(name: "Pretzel Turtles", image:"https://photos.bigoven.com/recipe/hero/pretzel-turtles.jpg?h=500&w=500", prep_time: 10, cook_time: 4, category: "Candy", instructions: "Preheat oven to 300 degrees F (150 degrees C).
Arrange the pretzels in a single layer on a parchment lined cookie sheet. Place one chocolate covered caramel candy on each pretzel.
Bake for 4 minutes. While the candy is warm, press a pecan half onto each candy covered pretzel. Cool completely before storing in an airtight container.",
ingredients_attributes:
  {0 => {name: "small mini pretzels", recipe_ingredients: {quantity: "20"}},
  1 => {name: "chocolate covered caramel candies", recipe_ingredients: {quantity: "20"}},
  2 => {name: "pecan halves", recipe_ingredients: {quantity: "20"}}})
# recipe10.ingredients = [
# Ingredient.create(name: "small mini pretzels", quantity: "20"),
# Ingredient.create(name: "chocolate covered caramel candies", quantity: "20"),
# Ingredient.create(name: "pecan halves", quantity: "20")]

recipe11 = user.created_recipes.create(name: "Apple Turnovers", image:"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2006/8/11/0/ig0704_turnover1.jpg.rend.hgtvcom.616.462.suffix/1393611541160.jpeg", prep_time: 30, cook_time: 25, category: "Pastry", instructions: "Combine the lemon and 4 cups water in a large bowl. Place the sliced apples in the water to keep them from browning.
Melt butter in a large skillet over medium heat. Drain water from apples, and place them into the hot skillet. Cook and stir for about 2 minutes. Add brown sugar, and cinnamon, and cook, stirring, for 2 more minutes. Stir together cornstarch and 1 tablespoon water. Pour into the skillet, and mix well. Cook for another minute, or until sauce has thickened. Remove from heat to cool slightly.
Preheat the oven to 400 degrees F (200 degrees C).
Unfold puff pastry sheets, and repair any cracks by pressing them back together. Trim each sheet into a square. Then cut each larger square into 4 smaller squares. Spoon apples onto the center of each squares. Fold over from corner to corner into a triangle shape, and press edges together to seal. Place turnovers on a baking sheet, leaving about 1 inch between them.
Bake for 25 minutes in the preheated oven, until turnovers are puffed and lightly browned. Cool completely before glazing.
To make the glaze, mix together the confectioners' sugar, milk and vanilla in a small bowl. Adjust the thickness by adding more sugar or milk if necessary. Drizzle glaze over the cooled turnovers.",
ingredients_attributes:
  {0 => {name: "lemon juice", recipe_ingredients: {quantity: "2 tablespoons"}},
  1 => {name: "water", recipe_ingredients: {quantity: "4 cups"}},
  2 => {name: "butter", recipe_ingredients: {quantity: "2 tablespoons"}},
  3 => {name: "Granny Smith apples", recipe_ingredients: {quantity: "4"}},
  4 => {name: "sea salt", recipe_ingredients: {quantity: "1/2 teaspoon"}},
  5 => {name: "brown sugar", recipe_ingredients: {quantity: "1 cup"}},
  6 => {name: "cornstarch", recipe_ingredients: {quantity: "1 tablespoon"}}})
# recipe11.ingredients = [
# Ingredient.create(name: "lemon juice", quantity: "2 tablespoons"),
# Ingredient.create(name: "water", quantity: "4 cups"),
# Ingredient.create(name: "Granny Smith apples", quantity: "4"),
# Ingredient.create(name: "butter", quantity: "2 tablespoons"),
# Ingredient.create(name: "sea salt", quantity: "1/2 teaspoon"),
# Ingredient.create(name: "brown sugar", quantity: "1 cup"),
# Ingredient.create(name: "cornstarch", quantity: "1 tablespoon")]
recipe12 = user.created_recipes.create(name: "Croissants", image:"https://images.media-allrecipes.com/userphotos/720x405/4674614.jpg", prep_time: 30, cook_time: 25, category: "Pastry", instructions: "Place warm water in the bowl of a stand mixer. Sprinkle with yeast. Let yeast dissolve for 10 minutes. Add sugar and bread flour. Sprinkle with salt; add 6 tablespoons butter. Attach the bowl to the stand mixer. Mix dough with the dough hook just until butter is completely kneaded in and the dough forms a ball and pulls away cleanly from the sides of the bowl, 3 or 4 minutes.
Transfer dough to a work surface and form into a semi-smooth ball. Place dough back in the mixer bowl; cover. Let rise in a warm spot until doubled, about 2 hours.
Transfer dough to a lightly floured work surface. Push and press dough to deflate it, and form it into a rectangle. Fold into thirds by lifting one end over the middle third, and folding the other side onto the middle. Wrap in plastic wrap. Place on a rimmed baking sheet lined with a silicone mat. Refrigerate until chilled through, about 1 hour.
Cut 2 sticks butter in half lengthwise and place slightly apart from each other on a length of parchment paper long enough to fold over the butter. Fold the parchment paper over the butter. Press butter down. Roll out with a rolling pin to a square about 8x8 inches. Refrigerate until a little chilled and just barely flexible, 10 or 15 minutes.
Roll dough out into a rectangle slightly wider than the butter slab and just over twice as long. Place butter on one half of the dough leaving about 1 inch margin from the edge of the dough. Fold the other half of the dough over the butter. Dust work surface and dough with flour as needed.
Press rolling pin down on dough to create ridges. Then roll out the ridges. Repeat this process. Keep pressing and rolling until dough is about the same size rectangle as you had before you folded it in half, dusting with just a bit of flour as necessary.
Starting from the short side, fold one-third of dough over middle third. Then fold the other end over to form a small rectangle. Flatten out just slightly with rolling pin. Transfer to the silicone-lined baking sheet; cover with plastic wrap. Refrigerate until chilled, about 30 minutes.",
ingredients_attributes:
  {0 => {name: "warm water", recipe_ingredients: {quantity: "1 cup"}},
  1 => {name: "dry yeast", recipe_ingredients: {quantity: "1 package"}},
  2 => {name: "granulated white sugar", recipe_ingredients: {quantity: "1/4 cup"}},
  3 => {name: "unbleached bread flour", recipe_ingredients: {quantity: "3 1/2 cups"}},
  4 => {name: "kosher salt", recipe_ingredients: {quantity: "3 teaspoons"}},
  5 => {name: "butter", recipe_ingredients: {quantity: "6 tablespoons"}},
  6 => {name: "egg", recipe_ingredients: {quantity: "1"}}})
recipe13 = user2.created_recipes.create(name: "Danish Kringle", image:"https://images.media-allrecipes.com/userphotos/560x315/1989517.jpg", prep_time: 45, cook_time: 30, category: "Pastry", instructions: "In a large bowl, cut 1 cup butter into flour until crumbly, leaving pea-sized chunks. Stir in sour cream, and mix well; dough will be very sticky. Form dough into a ball. Cover tightly, and refrigerate 8 hours, or overnight.
Preheat oven to 375 degrees F (190 degrees C). Lightly grease a baking sheet. Prepare the filling by combining 1 cup butter, brown sugar, and 1 cup chopped walnuts.
Divide dough into three equal parts; return two parts to the refrigerator to keep cold. Quickly form 1/3 of the dough into a rectangle, and flour lightly. On a heavily floured surface, roll out to approximately 12x17 inches. Position lengthwise on the work surface. Along the long edges of the dough rectangle, use a sharp knife to cut 4 inch long angled lines about 1/2 inch apart. Spoon 1/3 of the filling along the length of the rectangle's uncut center. Alternating from one side of the dough to the other, fold each 1/2 inch wide strip towards the center, crisscrossing the filling in a braid-like fashion. Lightly press together the ends of the strips to seal. Sprinkle with 1/3 of the remaining walnuts. Repeat with remaining ingredients to form 3 braided danishes. Arrange danishes on prepared baking sheet.",
  ingredients_attributes:
    {0 => {name: "butter", recipe_ingredients: {quantity: "1 cup"}},
    1 => {name: "brown sugar", recipe_ingredients: {quantity: "2 cups"}},
    2 => {name: "sour cream", recipe_ingredients: {quantity: "1 cup"}},
    3 => {name: "chopped English walnuts", recipe_ingredients: {quantity: "1 1/2 cups"}},
    4 => {name: "confectioners' sugar", recipe_ingredients: {quantity: "1 cup"}},
    5 => {name: "water", recipe_ingredients: {quantity: "2 tablespoons"}},
    6 => {name: "egg", recipe_ingredients: {quantity: "1"}}})
recipe14 = user.created_recipes.create(name: "Bananas Foster", image:"https://static01.nyt.com/images/2017/01/20/dining/20COOKING-BANANAS-FOSTER2/20COOKING-BANANAS-FOSTER2-articleLarge.jpg", prep_time: 15, cook_time: 20, category: "Other", instructions: "Melt butter and sugar in a small frying pan. Add banana pieces and sauté over medium heat until lightly browned, turning pieces once. Sprinkle with cinnamon. Remove pan from heat.
Add liqueur and rum to pan. To flambé, carefully light sauce with long-reach lighter. Spoon flaming sauce over the banana pieces until flame is extinguished.
Serve warm banana pieces and sauce over vanilla ice cream.",
  ingredients_attributes:
    {0 => {name: "unsalted butter", recipe_ingredients: {quantity: "1 tablespoon"}},
    1 => {name: "dark brown sugar", recipe_ingredients: {quantity: "2 teaspoons"}},
    2 => {name: "banana", recipe_ingredients: {quantity: "1 peeled and halved"}},
    3 => {name: "banana liqueur", recipe_ingredients: {quantity: "1 teaspoon"}},
    4 => {name: "light rum", recipe_ingredients: {quantity: "1 ounce"}}})
recipe15 = user.created_recipes.create(name: "Cherries Jubilee", image:"https://food.fnr.sndimg.com/content/dam/images/food/fullset/2007/7/13/0/fruitdesserts_cherriesjubilee.jpg.rend.hgtvcom.616.462.suffix/1384784384886.jpeg", prep_time: 15, cook_time: 11, category: "Other", instructions: "Evenly scoop the ice cream into 4 dishes or decorative glasses and put in the freezer until ready to serve (this can be done up to 4 hours ahead).

Wash and pit the cherries. Put the cherries and sugar in a large skillet. Peel 2 strips of zest from the lemon in wide strips with a peeler and add to the cherries. Squeeze the juice of half the lemon over the top. Stir to combine evenly. Cover and cook the cherries over medium-low heat until the sugar dissolves, about 4 minutes. Uncover and cook over medium-high until cherries get juicy, about 5 minutes more.

To flambe the rum: If cooking over a gas flame, pull the pan off the heat and add the rum. Ignite the alcohol with a long match or one held with tongs. Swirl the pan slightly until the flames subside, about 30 seconds.

If cooking over an electric stove, put the rum in a small saucepan. Warm it over medium-low heat and carefully light it with a long match or one held with tongs. Pour the lit rum over the cherries, and swirl the pan lightly until the flames subside, about 30 seconds.

Ladle the cherries and their juices over prepared ice cream scoops. Serve immediately.",
  ingredients_attributes:
    {0 => {name: "vanilla ice cream", recipe_ingredients: {quantity: "1 pint"}},
    1 => {name: "cherries", recipe_ingredients: {quantity: "1 pound"}},
    2 => {name: "sugar", recipe_ingredients: {quantity: "1/2 cup"}},
    3 => {name: "lemon", recipe_ingredients: {quantity: "1"}},
    4 => {name: "golden rum", recipe_ingredients: {quantity: "1/3 cup"}}})
