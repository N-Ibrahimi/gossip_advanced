# the gossip project (thp, week 5, day 1)

## made in pair programming by Maud Lévy :fried_shrimp: & Antoine Vercoutère :poultry_leg:

### how to use

1. git clone the repository to your computer
2. run the `bundle install` command
3. run the `rails db:create` command
4. run the `rails db:migrate` command
5. run the `rails db:seed` command
6. Now you can run the `rails server`
7. Go on your web browser and type `localhost:3000`
8. Have fun on the Gossip Project
9. You can also check the `localhost:3000/welcome/your_name` to see a customised welcome page

### database

This app is composed of seven tables : `users`, `cities`, `gossips`, `tags`, `tag_gossip_joins`, `private_messages`, and `comments`

They are composed by the the following columns :

**TABLE : users**
* id,
* first_name,
* last_name,
* description,
* email,
* age,
* city_id

**TABLE : cities** 
* id,
* name,
* zip_code

**TABLE : gossips** 
* id,
* title,
* content,
* user_id

**TABLE : tags** 
* id,
* title

**TABLE : tag_gossip_joins** 
* id,
* tag_id,
* gossip_id

**TABLE : private_messages** 
* id,
* recipient_id,
* sender_id,
* content

**TABLE : comments** 
* id,
* gossip_id,
* user_id,
* content

### controllers

This app is composed of two controllers : `dynamic_pages` and `static_pages`

They contain the following methods, that points to `html.erb` files

**dynamic_pages** 
* welcome,
* gossip,
* author

**static_pages** 
* index,
* contact,
* team

### rspec

to run rspec, just type `rspec` in the terminal

we made tests on all models, everything should work :grin:

:kiss: