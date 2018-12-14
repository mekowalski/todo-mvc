//to create a new Item (var item = new Item(json))
function Item(attributes) {
  this.description = attributes.description
  this.id = attributes.id
}

//instantiates new item on the json
Item.success = function(json) {
  var item = new Item(json)
  var itemLi = item.renderLi()

  $('ul.todo-list').append(itemLi)
}

Item.error = function(response) {
  console.log('You broke it', response)
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

Item.formSubmit = function(e) {
  e.preventDefault()
  var $form = $(this)
  var action = $form.attr('action')
  var params = $form.serialize()

  $.ajax({
    url: action,
    data: params,
    dataType: 'json',
    method: 'POST'
    // accepts: 'application/json'
  })
  .success(Item.success)
  .error(Item.success)
}

$(function() {
  $('form#new_item').on('submit', Item.formSubmit)
})

//check out these:
// respond_to
// ajax docs => always
