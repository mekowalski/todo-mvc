$(function() {
  $('form#new_item').on('submit', function(e) {
    e.preventDefault()
    //cache objects, when object references jquery object,
    //THIS always refers to the item that triggered the event(the entire form)
    var $form = $(this)
    var action = $form.attr('action')
    var params = $form.serialize()

    $.ajax({
      url: action,
      data: params,
      dataType: 'json',
      method: 'POST'
    })
    .success(function(json) {
      //get back json to be a JS object of newly created item
      console.log(json)
    })
  })
})
