$(function() {
  $('form#new_comment').submit(function(e) {
    e.preventDefault();
    postComment(this);
})

function postComment(element) {
  let data = $(element).serialize();
  let posting = $.post(element.action, data)
  posting.done(function(data) {
    let name = data.user.first_name + " " + data.user.last_name
    debugger;
    $("#comments").prepend(`${data.created_at}`)
    $("#comments").prepend(`<p>${data.text}</p>`)
    $("#comments").prepend(`<h3>${name}</h3>`)
    $("#comment_submit").prop("disabled",false)

  })
  $("#comment_text").val("")

})
}
