# RAILS FORM IN 10 STEPS

## ⚫️ STEP 1
* Create the controller in the console 
~~~~
  rails generate controller songs ❌
~~~~
 * Create the controller with an index defined and the index view
 ~~~~
   rails generate controller songs index new show  ✔️
 ~~~~

## ⚫️ STEP 2
* Go to app/config.routes.rb and indicate the resources name and the root page
 ~~~~
   resources :songs
   root 'songs#index'
 ~~~~
 if you want to see the generated routes  do in the command line
  ~~~~
   rails routes
 ~~~~

## ⚫️ STEP 3
* Create the model
~~~~
  rails generate model Song title:string time:integer  ....
~~~~
Those attributes are automatically added to the songs table in the database and mapped to the Song model.

## ⚫️ STEP 4
 * Migrate the model into the database 
 ~~~~
  rails db:migrate ❗️
 ~~~~
 
 ## ⚫️ STEP 5
* Edit the create def in the song controller 
~~~~
  def create
        @song = Song.new(song_params)👈
        @song.save 
        redirect_to @song
    end
~~~~
* For securiry we need to specify wich are the permitted parameters. 
~~~~
  private
        👉def song_params
            params.require(:song).permit(:title, :artist, :album, :lyrics)
        end    
~~~~

 ## ⚫️ STEP 6
* Creaete the song inputs in the new view.
~~~~
  <%= form_with scope: :song, url: songs_path, local: true do |form| %>
  <p>
    <%= form.label :title %><br> 
    <%= form.text_field :title %> 
  </p>
  ...
  ...Complete the rest inputs!
  ...
    <p>
      <%= form.submit %> ❗️
    </p>
  <% end %>
  
  <%= link_to 'Atrás', songs_path %>
~~~~
* link_to will redirect to the index song page ❗️

 ## ⚫️ STEP 7
* Define the song to show in the controller def show
~~~~
def show 
        @song = Song.find(params[:id])  ❗️
    end
~~~~
 ## ⚫️ STEP 8
* Create the single song view and 
~~~~
<p>
  <strong>Title:</strong>
  <%= @song.title %>
</p>
.....
....
Complete the rest view attributes!
....
...
<%= link_to 'Atrás', songs_path %>
~~~~
* !Don't forget the back link!


 ## ⚫️ STEP 9
 
* Define all the songs created in database in the controller def index
~~~~
def index
        @songs = Song.all ❗️
    end
~~~~

 ## ⚫️ STEP 10
* Create the show view 
~~~~
<table>
  <tr>
    <th>Title</th>
    <th>Artist</th>
    <th></th>
    ..
    ..
  </tr>
 
    <% @songs.each do |song| %>
    <tr>
      <td><%= song.title %></td>
      <td><%= song.artist %></td>
      ..
      ..
      <td><%= link_to 'Ver', song_path(song) %></td>
    </tr>
  <% end %>
</table>
<%= link_to 'Nueva', new_song_path %>
<%= link_to 'Atrás', songs_path %>
~~~~

 # 🚩 FIN
