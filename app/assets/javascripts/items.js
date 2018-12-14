//to create a new Item (var item = new Item(json))
function Item() {
  this.description = attributes.name
  this.id = attributes.id
}

//this gives an error where Item.templateSource is undefined
//needs to be in document ready, so the doc can load and then run correctly
Item.templateSource = $('#item-template').html()
Item.template = Handlebars.compile(Item.templateSource)

Item.template({descriptionL 'New List Item'})

//to take care of var itemLi
Item.prototye.renderLi = function() {

}

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
      var item = new Item(json)
      var itemLi = item.renderLi()

      $('ul.todo-list').append(itemLi)
    })
  })
})
