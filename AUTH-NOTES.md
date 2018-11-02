# Step 1
-How does it impact the DB
  1. new User Model
  -email

(routes created with User model in mind and RESTful routes)
-What URLs do I need
  GET /users/new -form
  POST /users -create user in DB

  GET /login -form
  POST /sessions -login the user

# Step 2: Logging in
-if you're not logged in you can't see anything
-go back to the login page

[]create Sessions con
GET /login sessions#new
POST /sessions sessions#create
