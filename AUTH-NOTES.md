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
- [x]modify sessions#create
    - currently still receiving errors
- [x]link or button for option of logging/registering via github
- [x]solve sessions#create
    - was running into issue of not being abl to retrieve user email from github but finally got it
- []need to refactor a lot of logic out of #create

OAUTH2 Flow
1. user goes to /auth/github on my site
2. omniauth redirects user to github, providing github with key/secret identifying my app
  - github needs to know which of 100000's apps that user github for auth, the user is trying to login to
3. the user logs in with github
4. github redirects user back to my app (callback URL) and provides my app with secret code representing
  - user on github
5. then my app send secret code back to github
6. github confirms that the code came from github and that my app received it
7. github sends me back the user data
  - Prevent man in the middle attack
  - allows me to talk to github and github checks if app has been hacked
8. check id user exists in my system by email, if yes then log them in
9. otherwise, create a user based on their email and log them in
