//to create a new Item (var item = new Item(json))
function Item(attributes) {
  this.description = attributes.description
  this.id = attributes.id
}

//instantiates new item on the json
Item.always = function(response) {

  // debugger
  // json = JSON.parse(response)
  //the response is already a json object, doesn't make sense to parse it
  //where is response being defined
  //it is being chained on the .ajax call
  //json returns the object
  //json.responseText does return the ID, Description and list ID
  //response isb;t defined
  var item = new Item(response)
  var itemLi = item.renderLi()

  $('ul.todo-list').append(itemLi)
}

Item.error = function(response) {
  console.log('You broke it', response)
}

$(function() {
  Item.templateSource = $('#item-template').html()
  Item.template = Handlebars.compile(Item.templateSource)
  //L22: error message: "You must pass a string or Handlebars AST to Handlebars.compile. You passed undefined"
  //not sure what this is
})

//to take care of var itemLi
Item.prototype.renderLi = function() {
  return Item.template(this)
}

// Item.formSubmit = function(e) {
// }

$(function() {
  $('form#new_item').on('submit', function(e) {
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
    .always(Item.always)
    .error(Item.error)
  })
})


//check out these:
// respond_to
// ajax docs => always
