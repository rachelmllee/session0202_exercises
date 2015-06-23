## Essays

### Conceptual Questions
#####Explain how a route leads to a controller and renders a view.
A route decides which controller receives which requests. The controller then uses the logic of the model to get data from the database, which goes back to the controller to render a view. 

#####Explain the difference between a schema, a database, and a model. Give an example by relating it back to the Blog app you built in lab today.
- Schema: set of objects that belong to a database (controls what the data in the database looks like) [ie. Schema file created a table to store all the articles containing the title, text, etc.]
- Database: stores all the data [ie. all the individual articles and comments]
- Model: defines a programming interface for interacting with the database (provides functionality to the data in the database) [ie. Article model controlled conditions (format) for the article class and defined associated objects]

#####Explain the purpose of a migration.
A migration makes it easy to alter your database schema over time. A schema starts with nothing in it, and each migration modifies it to add or remove tables, columns, or entries.

### Code Questions
#####What would the line resources :sharks in config/routes.rb do?
Declares the resource root to sharks, which maps HTTP verbs to controller actions automatically through sharks.

#####What does rake routes do? Explain why you think this command might be useful.
rake routes shows where all the HTTP verbs map to in the controller, which helps us define the HTTP functions. It also shows us the URL pattern for the action.

#####What is the equivalent Sinatra code in Rails? How are routes handled differently in Rails?
In Sinatra, we use "get '[route]' do" to route our website to other addresses, and this is done in the main app.rb file. In Rails, we would put all the routes in the controller, which automatically map to our html.erb files in articles. The syntax would be "def [HTML action]". The data would also be saved in the database rather than in the methods in Sinatra.