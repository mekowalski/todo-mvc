//to create a new Item (var item = new Item(json))
function Item(attributes) {
  this.description = attributes.description
  this.id = attributes.id
}

//this gives an error where Item.templateSource is undefined
//needs to be in document ready, so the doc can load and then run correctly
$(function() {
  Item.templateSource = $('#item-template').html()
  Item.template = Handlebars.compile(Item.templateSource)
})

//to take care of var itemLi
Item.prototype.renderLi = function() {
  return Item.template(this)
}

$(function() {
  $('form#new_item').on('submit', function(e) {
    e.preventDefault()
    var $form = $(this)
    var action = $form.attr('action')
    var params = $form.serialize()

    $.ajax({
      url: action,
      data: params,
      dataType: 'application/json',
      method: 'POST',
      accepts: 'application/json'
    })
    .always(function(response) {
      json = JSON.parse(response.responseText)
      var item = new Item(json)
      var itemLi = item.renderLi()

      $('ul.todo-list').append(itemLi)
    })
  })
})

//check out these:
// respond_to
// ajax docs => always
