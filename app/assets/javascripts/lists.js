$(function(){
  $('input.toggle').on('change', function(){
    $(this).parents('from').trigger('submit')
  })
})
 
