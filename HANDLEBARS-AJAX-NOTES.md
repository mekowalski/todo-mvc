HANDLERBARS AND JS PROTOTYPES WITH RAILS AND AJAX

121318
[x]Hijack form with click event handler
  -on submit worked properly to prevent default

[x]Get data to submit form correctly

-Created low-level ajax request ($.ajax()) instead of ($.post()) to retrieve JSON back from Rails server
-Use respond_to instead of redirect_to, dependent on HTML or JSON

[x]Get JSON object
[x]Append to DOM

-Added handlebars_assets gem, not sure if it's the same thing as Handlebars, Github docs are informative
-Created Handlebars template in script tag, not done yet

121418
-Still working on Handlebars
[x]Need to build a template
[x]Create template
  -Copy outerHTML from browser console
  -make generic(item_22 is now item_{{id}})
  -in lists/show.html.erb

[x]Create variable to:
  1. read the HTML from template
  2. then convert it into a function that can render
  -Wrap this in document ready so that it properly loads

-Ran into issues with respond_to, JSON return and options
-use .always instead of .success
-create json holder

-Working with different options
-Error in console regarding L22 of items.js
