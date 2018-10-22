# Step 1: Integrate Basic Theme to Asset Pipeline

[X]/ - Go to home page and see a stubbed out, non-dynamic page with theme

# Step 2: Allow people to CRUD lists

[] ListsController
  #index
  -see all the lists
  -doubling as #new in that it present the person with a form to create a new list
  / - Index all the lists

  -create a lists

-show a list

Want people to be able to create lists
Then be able to add items to those lists
They should be able to navigate many lists
And see each lists items

Need a Model and Controller(create resource)

MODELS
lists
  has many items

items
  belongs to a list


-Does it impact my DB?
-Does it impact my URLs? '/lists/1'

# Step 3: Add Items to a List
-come back to Refactor Views into Partials and Helpers once TodoMVC 2 is completed
-TodoMVC 2 is: Lists have Items, i'll be able to add Item piece(MVC)
102218
[x]Make Items to List
  List has many Items
  2   Grocery List

  Every Item belongs to a List
  id  description list_id(foreign key)
  1   bananas     2
  2   apples      2

[x]Make items a List real
[x]Need and Item table: associated with a List
[x]#create for and item in a List: what is the HTTP URL method
-the form is present in the list show page
-what URL does this imply?

POST /items #=> doesn't describe which list we are adding an item to
An Item doesn't exist in app outside of context of the List it belongs to
-Nested Resources : /lists/:id/items (Items are nested within this List, in terms of URL )

# Step 4: Adding Validations
[x]validate that Lists have a name
[x]validate that Items have a description

# Step 5: Add state(complete, incomplete) to Items in a List
-get it working without JS or AJAX to build out more of the logic without complexity of JS

-what URLs are needed and how might DB change
-idea of item being complete/incomplete requires data
-new forms for updating item status which means new URL
/lists/1/items
  PUT/PATCH to /lists/1/items/1 -Updating Item 1 in List 1
  PUT/PATCH to /lists/:list_id/items/:id

-need to steal checkbox HTML from TodoMVC dot com
-add this to view
<input class="toggle" type="checkbox">

-also need JS function to submit form with checkbox click
$(function(){
  $('input.toggle').on('change', function(){
    $(this).parents('from').trigger('submit')
  })
})


# Delete an Item or List


Believe there are 5 total TodoMVC stages to complete
1.Assets and Managing Lists
2.Lists have Items
3.Mark Items Complete
4.Refactoring with Partials & Helpers
5.Deleting Items


100418
-not sure if this will change again with TodoMVC 2-5 code alongs, will see
-most up to date code is different from code along presentation
-therefore i don't have all the correct code and that's why my form isn't working
-code along is actually out of order, when i am at the correct part then i will be able to work out this
 part of the application(partials and helpers)
