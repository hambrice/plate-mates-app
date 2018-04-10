$(function() {
  $('form#new_comment').submit(function(e) {
    e.preventDefault();
    let data = $(this).serialize();
    //debugger;
    let posting = $.post(this.action, data)
    //debugger;
    posting.done(function(data) {
      let name = data.user.first_name + " " + data.user.last_name
      $("#comments").prepend(`${data.created_at}`)
      $("#comments").prepend(`<p>${data.text}</p>`)
      $("#comments").prepend(`<h3>${name}</h3>`)
    })
    $("#comment_text").val("")
  })
})
