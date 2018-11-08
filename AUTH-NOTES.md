# Step 1
- How does it impact the DB
  1. new User Model
  -email

(routes created with User model in mind and RESTful routes)
- What URLs do I need
  - GET /users/new -form
  - POST /users -create user in DB

  - GET /login -form
  - POST /sessions -login the user

# Step 2: Logging in
- if you're not logged in you can't see anything
- go back to the login page

- [x]create Sessions con
- GET /login sessions#new
- POST /sessions sessions#create

- Currently, the root '/' is displaying the lists#index BUT ListsController has before_action of
 authentication_required and this is not being called
- Therefore lists#index is displayed

- Now root works correctly to redirect user to Login path/form
- Login works, to display lists#index
- Logout built with sessions#destroy, correctly logs out and redirects to login page
- This is a cool part.  User has not association with lists but can create lists, add items to list and mark
 items complete in a list

# Step 3: Incorporate OmniAuth
The Handshake
1. Consumer is application
2. Third Party(Google, Github, etc) responds with a token
3. Consumer(application) doesn't exactly know who the user is therefore sends token back to Third Party
4. Third part validates and sends back correct user data

- [x]oauth and oauth-gh gems
- [x]build configuration with Rails initializer
- [x]gh key and secret, create new application
- [x]need to route the callback URL to sessions#create(most likely)
- []modify sessions#create
- []link or button for option of logging/registering via github
