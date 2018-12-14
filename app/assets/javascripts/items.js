//to create a new Item (var item = new Item(json))
function Item() {
  this.description = attributes.name
  this.id = attributes.id
}

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


// var source = $('#entry-template').html()
// undefined
// source => returns source code into JS variable that is a string
// "
//   <div class="entry">
//     <h1>{{title}}</h1>
//     <div class="body">
//       {{body}}
//     </div>
//   </div>
// "

// var template = Handlebars.compile(source)
// undefined
// template => convert string into a template
// ƒ e(a,b){return f||(f=d()),f.call(this,a,b)}
