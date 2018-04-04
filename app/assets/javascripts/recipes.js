class Recipe {
  constructor(recipe) {
    this.name = recipe.name
    this.prepTime = recipe.prep_time
    this.cookTime = recipe.cook_time
    this.image = recipe.image
    this.instructions = recipe.instructions
    this.ingredients = recipe.ingredients
    this.recipeIngredients = recipe.recipe_ingredients
    this.user = {id: recipe.user.id, name: recipe.user.first_name + " " + recipe.user.last_name}
    this.ingredientsList = function() {
      let array = [];
      //let recipeIngredients = th
        for(let i = 0; i < this.ingredients.length; i++) {
          array.push(this.recipeIngredients[i].quantity + " " + this.ingredients[i].name)
        }
        return array

    }
  }
}
// class Ingredient {
//   constructor(ingredient) {
//     //debugger;
//     this.id = ingredient.id
//     this.name = ingredient.name
//     store.ingredients.push(this)
//   }
// }
// class RecipeIngredient {
//   constructor(quantity, recipe, ingredient) {
//     this.quantity = quantity
//     this.recipeId = recipe.id
//     this.ingredientId = ingredient.id
//   }
// }
$(function () {
  $(".js-next").on('click', function(e) {
    e.preventDefault();
    nextRecipe(this);
  })
})
function nextRecipe(element) {
  let nextId = parseInt($(element).attr("data-id")) + 1
  $.getJSON(`/recipes/${nextId}`, function(rec) {
    recipe = new Recipe(rec);
    replaceRecipe(recipe);
  })
  $('.js-next').attr('data-id', nextId)
  $('.js-like').attr('href', `/recipes/${nextId}/likes`)
}
function replaceRecipe(recipe) {
  $('h2').text(recipe.name)
  $('h3 a').attr('href', `/users/${recipe.user.id}/recipes`)
  $('h3 a').text(recipe.user.name)
  $('img').attr('src', recipe.image)
  $('#prep-time').text(recipe.prepTime)
  $('#cook-time').text(recipe.cookTime)
  $('#instructions').text(recipe.instructions)
  $('#ingredients').html('<ul></ul>')
  recipe.ingredientsList().forEach(ingredient =>
    $('ul').append(`<li>${ingredient}`) )
}
