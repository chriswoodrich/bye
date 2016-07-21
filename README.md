# Bye

Bye removes the Rails methods `try` and `try!`.

90% of `try` usage in Rails is either a flagrant Law of Demeter violation or more simply a betrayal of single responsibility.  Bye forces you to be confident in your code: using the null object pattern, better delegating of methods, or just using fewer chained methods.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bye'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bye

## Usage

Bye works without any extra setup.

Without Bye:

`User.first.posts.try(:collect, &:foo).try(:uniq).try(:sort)`

=> `nil`

With Bye:
`User.first.posts.try(:collect, &:foo).try(:uniq).try(:sort)`

=>

NoMethodError: undefined method `try' for #<User:0x007f441b9e2140>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chriswoodrich/bye.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
