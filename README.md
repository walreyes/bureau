# Bureau - A didactic gem for creating a Rails Engine



**The intention of this gem is for teaching purposes, nothing more.**



Bureau is a rails engine to create a backoffice for your Rails application by providing a powerful and verbose DSL. (For coders only) Some of the features we may be covering here:

* Create a gem
* Build a DSL from scratch
* Setup a Rails engine
* Build form builders
* Dynamic search forms
* A bit of metaprogramming(not!!!)

There may be some other topics, but those ae the main ones we are going to be focusing.



This is an example on how the DSL should work or look like:

```ruby
Bureau::Resource.configure User do
	attributes {
		name: Field::String,
		email: Field::Email,
		image: Field::Image
	}

	show_page_attributes [:email, :name, :image]
	edit_attributes [:name, :last_name]

	collection_attributes [:id, :email]

	searchable_attributes [:email]

	is_deletable true
end
```

*I took some ideas from the guys at thoughtbot - https://github.com/thoughtbot*



#### Assignment one

1. Create a gem called bureau
2. Configure the `.gemspec` file to meet your requirements
3. Upload it to your github personal account
4. That is all! 



#### Assignment two

1. Create the rails engine

2. Create the installation command

   1. Create an initializer where Bureau will be configured

   2. The way it should work is by installing the gem with the following commands:

      ```console
      % bundle install && rails g bureau:install
      ```

3. Try it on your command line



#### Assignment three

1. Create the first version of the complete DSL, does not have to work at all

2. Save all the configured resources, so you can have:

   1. ```ruby
      Bureau::Resource.configure User do
      end

      Bureau::Resource.configure Project do
      end
      ```

3. Make `attributes` option work on the gem and map them into an object

4. Make the other DSL methods to work, just save the values, we don't need to process them. Yet



#### Assignment four

1. Build a simple build coming from the engine to link all the resources
   1. Each link should get you to a URI like: `/bureau/users`
   2. All of the routes should obey to one controller
2. Create a index view to show on a table all the `collection_attributes` inside a table

