class Recipe {
  constructor(recipe) {
    this.id = recipe.id
    this.name = recipe.name
    this.prepTime = recipe.prep_time
    this.cookTime = recipe.cook_time
    this.image = recipe.image
    this.instructions = recipe.instructions
    this.ingredients = recipe.ingredients
    this.recipeIngredients = recipe.recipe_ingredients
    this.comments = recipe.comments
    this.user = {id: recipe.user.id, name: recipe.user.first_name + " " + recipe.user.last_name}
    this.ingredientsList = function() {
      let array = [];
      //let recipeIngredients = th
        for(let i = 0; i < this.ingredients.length; i++) {
          array.push(this.recipeIngredients[i].quantity + " " + this.ingredients[i].name)
        }
        return array

    }
    this.comments = recipe.comments
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
  $("#categories").submit(function(e) {
    e.preventDefault();
    let inputNodes = this.querySelectorAll("input:checked")
    let inputsArray = []
    inputNodes.forEach(input =>
    inputsArray.push(input.name))
    $.get(`/categories/${inputsArray.join("&")}`, function(data){
      $(".card").remove()
      var template = Handlebars.compile(document.getElementById("recipes-template").innerHTML);
      var result = template(data)
      document.querySelector("wrapper").innerHTML += result;
      debugger;
      // for (i = 0; i <data.length; i++){
      //   let recipe = new Recipe(data[i])
      //   cards[i].childNodes[0].src = recipe.image
        //create a function that holds the string of html and inserts each thing needed; have that function append each card
      //}
      //debugger;

    })
    //limitCategories();
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
    const commentsDiv = $("#comments")
  commentsDiv.html("")
  recipe.comments.forEach(comment =>
    addComment(comment, commentsDiv) )
}
function addComment(comment, element) {
  //debugger;
  let name = comment.user.first_name + " " + comment.user.last_name
  element.prepend(comment.created_at)
  element.prepend(`<p>${comment.text}</p>`)
  element.prepend(`<h3>${name}</h3>`)
}

function limitCategories() {
  debugger;
}
