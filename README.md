# RAILS FORM IN 10 STEPS
Songs form with db

## ⚫️ STEP 1
* Create the controller in the console 
~~~~
  rails generate controller [name] ❌
~~~~
 * Create the controller with an index defined and the index view
 ~~~~
   rails generate controller [name] index ✔️
 ~~~~
 
* Go to app/config.routes.rb and indicate the root page
 ~~~~
   root '[name]#index'
 ~~~~

* Ruby version

* System dependencies

1. root 'welcome#index"
2. routes.rb ->  resources:songs
3. rails routes -> generates de rest routes
4. rails generate controller Songs
5. create def in the controller, new, create,.....
6. create the view html.erb with the name of the action
7.put the form in the view with url:model_path
8. create the create def in the controller with the hash params ¡Nada ha pasado con los datos!
9. create the model rails generate model Article title:string text:text Those attributes are automatically added to the articles table in the database and mapped to the Article model.
10.rails db:migrate

11.Redifine the create def in controller with the new model 

* ...

 # 🚩 FIN
