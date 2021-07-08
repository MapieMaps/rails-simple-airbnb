# TODO

* As a user, I can see all the available flats on our website
* As a user, I can post a flat to the website, specifying its name and address
* As a user, I can see detailed information of a given flat
* As a user, I can edit the details of a flat if I made a mistake
* As a user, I can delete a flat from the website, in case I don’t want to
  rent it anymore



## 1 - Model

✔︎ Generate the `Flat` model through the right rails generator.
  It should have the following columns.
  Feel free to add as many as you want! 😊

- `name`, as a string
- `address`, as a string
- `description`, as a text
- `price_per_night`, as an integer
- `number_of_guests`, as an integer

<!-- rails generate model Flat name:string address:string description:text price_per_night:integer number_of_guests:integer -->
<!-- rails db:migrate -->


## 2 - Controller & Routes

✔︎ Generate an empty (no actions) `FlatsController` with the right rails generator.

<!-- rails generate controller flats -->

✔︎ We can start off by adding all our 7 CRUD routes in our `config/routes.rb`
  as we will be building them all!
  What keyword can you use to generate all of them directly?

<!-- resources :flats -->

<!-- rails routes -->
<!--  Prefix Verb   URI Pattern               Controller#Action
        flats GET    /flats(.:format)          flats#index
              POST   /flats(.:format)          flats#create
     new_flat GET    /flats/new(.:format)      flats#new
    edit_flat GET    /flats/:id/edit(.:format) flats#edit
         flat GET    /flats/:id(.:format)      flats#show
              PATCH  /flats/:id(.:format)      flats#update
              PUT    /flats/:id(.:format)      flats#update
              DELETE /flats/:id(.:format)      flats#destroy -->


## 3 - Seed

✔︎ Let’s build a little seed for our app. This will help us to get started designing
  the views, even though we can’t actually add a flat through our website.
  In the `db/seeds.rb` file, let’s create around 4 flats.
  Here is one to get you started:

```ruby
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
```
<!-- rails db:seed -->

✔︎ Do you remember why we use .create! instead of just .create?

<!-- Creates an object (or multiple objects) and saves it to the database, if validations pass.
Raises a RecordInvalid error if validations fail, unlike Base#create. -->



## 4 - As a user, I can see all the available flats

✔︎ Let’s add the correct action in our `FlatsController` (hint: it’s `index` 😉).
  The action in the controller should fetch all flats in our database
  (we have Active Record for that!), and pass in onto the view.

✔︎ The view should loop over these to display them, like in the screenshot below.

✔︎ Let start designing right from the begining.

<!-- yarn add bootstrap -->
<!-- yarn add jquery popper.js -->

<!-- # Gemfile
gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'simple_form -->

<!-- bundle install -->
<!-- rails generate simple_form:install --bootstrap -->

<!-- rm -rf app/assets/stylesheets -->
<!-- curl -L https://github.com/lewagon/stylesheets/archive/master.zip > stylesheets.zip -->
<!-- unzip stylesheets.zip -d app/assets && rm stylesheets.zip && mv app/assets/rails-stylesheets-master app/assets/stylesheets -->

<!-- <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
</head> -->

<!-- ⚠️ -> restart le serveur j'ai l'impression -->

✔︎ We can use font awesome or materialize for icons.



## 5 - As a user, I can add a flat

Remember that to create a flat, we will need two routes.
One route is there to display the new flat form, and another one is there to
handle the `POST` request generated when submitting this form.
Try to use directly the `form_for` helper in your view, and make the form look nice!



## 6 - As a user, I can see detailed information of a given flat

Time to add the correct action to show all the information of a single given flat.
How can we know what flat the user wants to have a look at?

Let’s also update the `index.html.erb` view with the `link_to helper`
to build the dynamic links.



## 7 - As a user, I can edit the details of a flat

We can also add the posibility to edit a flat, to remove typos after creating a
flat. What about refactoring our `new.html.erb` form into a partial?

Don’t forget to update the `index.html.erb` and `show.html.erb` with the new edit
flat links!



## 8 - As a user, I can delete a flat from the website

Let’s also add the ability to remove a flat from our website.
How can we create a link to destroy a resource, and what action is it going
to hit in the controller?

Once again, let’s update all our view to put in this destroy link.



## 9 - Adding picture_url to the flat model (Optional)

Let’s add a picture url attribute to the flat model (just storing a string
of a picture url). Let update our new and edit forms to allow the user to
specify a flat picture to be displayed throughout the website.
We can also update our index and show pages with the new picture.

For your seed, you can find nice images of houses on unsplash.



## 10 - Filtering flats (Optional)

Let’s try to add a search bar to be able to filter flats in the index to find
the perfect flat!

How can we find what the user is searching for?
What active record method can we use to build a simple search engine?
This can get you started `@flats = Flat.where("name LIKE '%garden%'")`, make sure
you understand this statement before going any further.
How can we make sure the page still works like a traditional index,even if the
user isn’t searching anything?
How can we make sure the input is prefilled with the search query once the user
searched?







