# Homework

Use the OAuth Tester App to help you register your `localhost` with
OAuth service providers.

## Completion

Part 2 is completion. Get as far as you can, tho!

## Part 1

Get your OAuth Tester App to run.

Run `bundle install`. If it fails, solve the problem. The most likely
problem is an incorrect Ruby version. Change the version in your
`Gemfile` and then run it again.

Run `bundle exec rackup` or `bundle exec rackup -p 3000` if you prefer
to try and get it running. If it fails, solve the problem.

Get the page running and see the "set env vars" messages with each
link.

## Part 2

1. Register with GitHub using the directions provided.
1. Set your environmental variables on your `.bash_profile` by adding
   the lines: `export ENV_VAR_NAME=value` for the variables.
   - `GITHUB_OAUTH_ID`
   - `GITHUB_OAUTH_SECRET`
1. Reload your terminal you run the tester app in with the command
   `reload`, or open a new terminal window to run `rackup`.
1. The OAuth Tester App should now have a link you can follow to test
   your login. If it doesn't, fix the errors!

## Part 3

Register with another service you would like to explore (but not Google).

## Part 4

Go through the Sinatra Diary app (but not the one in `./instructor`)
and comment it to help keep track of what's happenning.

## Bonus

- Explore the OAuth links in the syllabus.
- Return to Week 4 exercises, to improve app-building skills.

