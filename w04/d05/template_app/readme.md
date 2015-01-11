# Setting up the Redis add-on for deployment

First make sure you have a project deployed on on Heroku. 

> Always remember! Projects intended for Heroku can't be git repositories initiated inside of other git repositories. That means work outside of your WDI folder.

```sh
$ git init
Initialized empty Git repository...
$ git add .
$ git commit -m 'first commit'
[master (root-commit) cd988d3] first commit...
$ heroku create
Creating protected-lowlands-4478... done, stack is cedar-14...
Git remote heroku added
$ git push heroku master
Counting objects: 19, done...
```

RedisToGo is simple Redis Hosting. We can attach a free instance to our Heroku application by running the following command from inside your project.

```sh
$ heroku addons:add redistogo
Adding redistogo on protected-lowlands-4478... done, v3 (free)
Use `heroku addons:docs redistogo` to view documentation.
```

Once RedisToGo has been added Heroku have a new environmental variable called REDISTOGO_URL.  You can 
check them with the following command:

```sh
$ heroku config
=== protected-lowlands-4478 Config Vars
REDISTOGO_URL: redis://redistogo:f4c7862695db1b6ee245e2ee6372199e@mummichog.redistogo.com:10010/
```

We wouldn't want to include the URL in our code if it's in a Public repo. Since it's an environmental variable on Heroku we can access the value from inside Sinatra as follows:

```rb
# server.rb
# This runs locally on your machine
configure :development do
    register Sinatra::Reloader
    $redis = Redis.new # Defaults to 127.0.0.1:6379
end

# This runs on Heroku
configure :production do
    $redis = Redis.new({url: ENV['REDISTOGO_URL']})
end
```

Resources

https://devcenter.heroku.com/articles/redistogo
