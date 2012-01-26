# API Key Maker [![Build Status](https://secure.travis-ci.org/codemis/api_key_maker.png)](http://travis-ci.org/codemis/api_key_maker)

Using SHA1 encryption and the current time, this gem generates a random string that is useful for API keys.  The length of the string can be set as an attribute up to 39 characters in length.  This is my attempt at creating a gem.

## Installation
Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "api_key_maker"
```

**Requires Ruby 1.9.2 or later.**

## Usage
Whenever you need to generate a key, just call the following method:

```ruby
ApiKeyMaker.make_api_key(10)
```
The first parameter tells what length you want the key to be.  It defaults to 10 characters, but can go up to 39 characters in length.

If you want an attribute of a model to default to an api key, then just add the following in your model:

```ruby
class ApiAccess < ActiveRecord::Base
  make_api_key :api_token, 13
end
```

This method takes 2 parameters.  The first is the attribute that will be set to the api key.  The second is the length (1-39 defaults to 10) of the string you want.  This api key is generated before the model's validation.

## Development
Questions or problems? Please post them on the [issue tracker](https://github.com/codemis/api_key_maker/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Johnathan Pulos and is under the MIT License.