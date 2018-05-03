$(function() {
  $('form#new_comment').submit(function(e) {
    e.preventDefault();
    postComment(this);
  })
})

function postComment(element) {
  const data = $(element).serialize();
  const posting = $.post(element.action, data)
  posting.done(function(data) {
    const name = data.user.first_name + " " + data.user.last_name
    $("#comments").prepend(`${moment(data.created_at).format('MM/DD/YYYY h:mma')}`)
    $("#comments").prepend(`<p>${data.text}</p>`)
    $("#comments").prepend(`<h3>${name}</h3>`)
    $("#comment_submit").prop("disabled",false)

  })
  $("#comment_text").val("")

}
