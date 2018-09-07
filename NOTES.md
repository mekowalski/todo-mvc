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
