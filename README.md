# A ruby wrapper for Icndb API.

## Installation

Latest version `0.1.0`

Add the following to your **Gemfile**

    gem 'icndb_client'

  or

    $ gem install icndb_client

## Usage

```ruby
require 'icndb'

# fetch all jokes
Icndb::Client.get_all_jokes

# fetch joke by id
Icndb::Client.get_jokes 5

# fetch all categories
Icndb::Client.get_categories

# fetch a random joke
Icndb::Client.get_random_joke

# fetch numberof random jokes
Icndb::Client.get_random_jokes 10

# fetch multiple jokes only of the given categories
Icndb::Client.get_jokes_categories_based [nerdy,explicit]

# fetch multiple jokes by excluding the given categories
Icndb::Client.get_jokes_exclude_categories [nerdy,explicit]
```

Documentation about the current weather end-point:
http://www.icndb.com/api/


## Contributing to chuck

* Check out the latest master to make sure the feature hasn't been implemented
  or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it
  and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to
  have your own version, or is otherwise necessary, that is fine, but please
  isolate to its own commit so I can cherry-pick around it.
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


