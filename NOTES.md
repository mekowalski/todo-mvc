# Step 1: Integrate Basic Theme to Asset Pipeline

/ - Go to home page and see a stubbed out, non-dynamic page with theme

# Step 2: Allow people to CRUD lists

-create a lists
-see all the lists
-show a list

Want people to be able to create lists
Then be able to add items to those lists
They should be able to navigate many lists
And see each lists items

MODELS
lists
  has many items

items
  belongs to a list
