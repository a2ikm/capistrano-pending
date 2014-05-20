# capistrano3_pending

This gem provides `cap deploy:pending` and `cap deploy:pending:diff` to Capistrano 3.
They were implemented in Capistrano 2.

Currently only git is supported.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano3_pending', :require => false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano3_pending

## Usage

Add below to Capfile:

    require 'capistrano3_pending'

and run below to show commit logs between current revision on the servers and deploying branch:

    $ bundle exec cap <stage> deploy:pending

or run below to show diff of them:

    $ bundle exec cap <stage> deploy:pending:diff


## Contributing

1. Fork it ( https://github.com/a2ikm/capistrano3_pending/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
