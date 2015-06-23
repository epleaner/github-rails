# GithubRails
[![Build Status](https://travis-ci.org/vinsonchuong/github-rails.svg?branch=master)](https://travis-ci.org/vinsonchuong/github-rails)
[![Dependency Status](https://gemnasium.com/vinsonchuong/github-rails.png)](https://gemnasium.com/vinsonchuong/github-rails)
[![Code Climate](https://codeclimate.com/github/vinsonchuong/github-rails.png)](https://codeclimate.com/github/vinsonchuong/github-rails)

## Development
### Getting Started
The application requires the following external dependencies:
* PostgreSQL
* Ruby 2.2.0
* Bundler

The rest of the dependencies are handled through:
```bash
bundle install
```

Create `.env` with the necessary database credentials:
```bash
DATABASE_USER='if different from your system username'
DATABASE_PASSWORD='unless Postgres authenticates with trust or ident'
```
These environment variables must be set before running any CLI commands. You
can ensure that they are set by one of:
* Manually running `source .env`
* Prefixing all commands with `foreman run`
* Using a tool like [direnv](http://http://direnv.net)

Bootstrap the database with:
```bash
source .env
bin/rake db:setup
```

You should now be able to run the tests and start the application:
```bash
bin/rails s
```

To remove the need to call `bin/rake` and `bin/rails`, you can add the `bin`
directory to your `PATH` environment variable via:
* `export PATH=bin:$PATH`
* [direnv](http://http://direnv.net)
