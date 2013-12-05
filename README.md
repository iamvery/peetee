# Peetee

A client for Pivotal Tracker's REST API v5

## Installation

Add this line to your application's Gemfile:

    gem 'peetee'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install peetee

## Usage

    tracker = Peetee::Tracker.new(ENV["TOKEN"])

    # https://www.pivotaltracker.com/help/api/rest/v5#Projects
    projects = tracker.projects

    # https://www.pivotaltracker.com/help/api/rest/v5#Project
    project = tracker.project(ENV["PROJECT_ID"])

## Running tests

  Add a `.env` file per https://github.com/bkeepers/dotenv

  Add a TOKEN and PROJECT_ID to your .env file.

  Then run `bundle exec rspec`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
