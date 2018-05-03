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
    this.user = {id: recipe.user.id, name: recipe.user.first_name + " " + recipe.user.last_name, recipeIds: recipe.user.recipe_ids}
  }
}
Recipe.prototype.ingredientsList = function() {
  let array = [];
    for(let i = 0; i < this.ingredients.length; i++) {
      array.push(this.recipeIngredients[i].quantity + " " + this.ingredients[i].name)
    }
    return array

}
//important thing about hoisting is that javascript is handling two separate processes: first, the process of handling declarations(var x), then it's handling the assignments(x=2). Important to realize that var x = 2 represents two different things conceptually to javascript, which is what allows for functions to be called before they are declared. The important aspect to remember about this is that hoisting only happens within it's scope, which means that this two-step process is completed once for each scope level (so var x, then x=2, then function() var y, y=3)
// class Comment {
//   constructor(comment) {
//     this.text = comment.text
//   }
// }

$(document).on('turbolinks:load', function () {
  bindActions()
})

function bindActions() {
  $(".js-next").on('click', function(e) {
    e.preventDefault();
    nextRecipe(this);
  })
  $("#search").submit(function(e) {
    e.preventDefault();
    limitCategories(this);
  })
}
function nextRecipe(element) {
  const currentId = parseInt($(element).attr("data-id"))
  $.getJSON(`/recipes/${currentId}`, function(data) {
    const currentRecipe = new Recipe(data);
    const nextId = nextRecipeId(currentRecipe.user.recipeIds, currentRecipe.id)
    $.getJSON(`/recipes/${nextId}`, function(rec) {
      const recipe = new Recipe(rec);
      replaceRecipe(recipe);
    })
    $('.js-next').attr('data-id', nextId)
    $('.js-like').attr('href', `/recipes/${nextId}/likes`)

  })
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
    const name = comment.user.first_name + " " + comment.user.last_name
    element.prepend(comment.created_at)
    element.prepend(`<p>${comment.text}</p>`)
    element.prepend(`<h3>${name}</h3>`)
}

function limitCategories(element) {
  const categoryNodes = element.querySelectorAll("input:checked")
  let categoryArray = []
  categoryNodes.forEach(input =>
  categoryArray.push(input.name))
  const object = {query: element.querySelector("#query").value, categories: categoryArray, sort: element.querySelector("#sort").value}
  const searchParams = JSON.stringify(object)
  $.get(`/search/${searchParams}`, function(recipes){
    $(".card").remove()
    let data = []
    data.path = window.location.pathname
    data.recipes = recipes
    const template = Handlebars.compile(document.getElementById("recipes-template").innerHTML);
    const result = template(data)
    document.querySelector("wrapper").innerHTML += result;
    $("#category_submit").prop("disabled",false)
  })
}

function nextRecipeId(array, currentId) {
  for(let i=0; i<array.length; i++) {
    if (array[i] == currentId) {
       if (i + 1 == array.length) {
         return array[0]
       } else {
         return array[i + 1]
       }
    }
  }
}
