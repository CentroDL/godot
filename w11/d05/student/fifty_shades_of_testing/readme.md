# Continuous Integration with Travis CI

Travis CI allows us to run tests on our builds everytime we push to github. This
is very useful in group settings where we can run tests against pull requests or
easily display the current status of a project.

## First

We'll try pushing this to github so move this App outside of the godot repo to `~/dev`

## Setup

Signup on `https://travis-ci.org/` and link your account with github.


## Once your app is on github

Create a `.travis.yml` file in your app's main folder with the scripts we want to run

```
# .travis.yml
language: ruby
rvm:
  - 2.1.2
```

Travis makes a new build of our App on Travis CI, therefore we'll need to run all the commands that we run locally on Travis to get set up.

```
# .travis.yml
script:
  - "bundle exec rake db:create"
  - "bundle exec rake db:migrate RAILS_ENV=test"
  - "bundle exec rspec"
```

We want to ensure they're run from the context of the current bundle, so the rails commands should be prefaced with `bundle exec`

PostgreSQL is started on boot, binds to `127.0.0.1` and requires authentication with "postgres" user and no password.

```
# .travis.yml
env:
  - PG_USERNAME='postgres'
``` 

If we want to run tests that require a Web browser

You can run test suites that require GUI (like a web browser) on Travis CI. The
environment has xvfb (X Virtual Framebuffer) and Firefox installed. Roughly
speaking, xvfb imitates a monitor and lets you run a real GUI application or web
browser on a headless machine, as if a proper display were attached.

```
# .travis.yml
before_script:
  - "sh -e /etc/init.d/xvfb start"
  - "export DISPLAY=:99.0"
  - "export JASMINE_SPEC_FORMAT=documentation"
```

The complete .travs.yml file should look like this

```
language: ruby
rvm:
  - 2.1.2
before_script:
  - "sh -e /etc/init.d/xvfb start"
  - "export DISPLAY=:99.0"
  - "export JASMINE_SPEC_FORMAT=documentation"
script:
  - "bundle exec rake db:create"
  - "bundle exec rake db:migrate RAILS_ENV=test"
  - "bundle exec rake spec"
env:
  - PG_USERNAME='postgres'
```
[Sign Up](http://about.travis-ci.org/docs/user/languages/ruby/)

[Database Setup](http://about.travis-ci.org/docs/user/database-setup/)

Using ENV variables and before_script steps

[secure env variables](http://about.travis-ci.org/docs/user/build-configuration/#Secure-environment-variables)

## 

On Travis, flick the switch to `on` for a project repo, then push again to Github

Flick the switches below to turn on the Travis service hook for your projects,
then push to GitHub.

## Jasmine in Rails

https://github.com/searls/jasmine-rails

Can you create a jasmine spec to validate your form on the client side?

{}
