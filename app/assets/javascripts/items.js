$(function() {
  $('form#new_item').on('submit', function(e) {
    e.preventDefault()
    //cache objects, when object references jquery object,
    //THIS always refers to the item that triggered the event(the entire form)
    var $form = $(this)
    var action = $form.attr('action')
    var params = $form.serialize()

    //what to do when the server responds to this AJAX request
    $.post(action, params)
    .success(function(json) {
      //get back json to be a JS object of newly created item
      console.log(json)
    })
  })
})
