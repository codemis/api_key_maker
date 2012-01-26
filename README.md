# API Key Maker

Using SHA1 encryption, it generates a random string to a set number of characters that is useful for API keys.  This is my attempt at creating my first gem.

## Installation
Add to your Gemfile and run the `bundle` command to install it.

```ruby
gem "api_key_maker", git: "https://github.com/codemis/api_key_maker"
```

**Requires Ruby 1.9.2 or later.**

## Usage
Whenever you need to generator a key, just call the following method:

```ruby
make_api_key(10)
```
The first parameter tells what length you want the key to be.  It defaults to 10 characters.

## Development
Questions or problems? Please post them on the [issue tracker](https://github.com/codemis/api_key_maker/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Johnathan Pulos and is under the MIT License.