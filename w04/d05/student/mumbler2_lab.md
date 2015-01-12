# Mumbler 2, the Labbenning

![](http://cdn3.whatculture.com/wp-content/uploads/2011/02/Groundhog-Day-4.jpg)

We are going to write our microblog again. We are going to implement more
features, and we are going to work in teams. Focus on working with GitHub,
targeting small problems or features, and regular check-ins of code. You can
also pair if you want on more complex problems.

> We're going to make it faster, stronger, better than it was. We know the
> technology. We can do it.

![](http://www.the6milliondollarblog.com/bionic/sites/default/files/field/image/40th.jpg)

## Part 0 - GitHub

One member of your team should create a repo on GitHub. This repo should include
the following files:

- `README.md`
- `config.ru`
- `server.rb`

Use the class's basic boilerplate for implementing these, and make them work.

Next, **ensure that everyone has been added to the repo as a collaborator.**
You can add people to a repo by going to Settings > Collaborators while on
GitHub.

Finally, **everyone should clone the repo.**

Try not to work on the same files as anyone else on any given commit. Commit
often, always pulling and then pushing your code. When you do get merge
conflicts, fix them! You may need to consult with your teammates to do so.

## Part 1 - The Basic App

The following features (those from the previous homework, including the bonus)
need to be implemented first. For further direction, see the `readme.md` for
Mumbler.

You can implement these in any order, with any type of work distribution you
feel would make sense for your group. Good luck!

#### Feature List

- As an administrator of Mumbler, I should be able to seed a Redis database
  with *mumbles* when I am testing or developing the application.
  - a *mumble* has:
    - **`text`**
    - `image`
    - `date`
    - `tags`
    - **`author_email`**
    - `author_handle`
    - `author_thumbnail`
    - **`likes`** (always is initialized to `0`)
- As a user of Mumbler, I should be able to see a *mumble*. (SHOW)
- As a user of Mumbler, I should be able to see a list of *mumbles*. (INDEX)
- As a user of Mumbler, I should be able to create a new *mumble*. (CREATE)
- As an administrator of Mumbler, I would like to ensure that users always
  enter at least an email and some text for a given *mumble*.
- As a user of Mumbler, I should receive helpful messages when I try to create
  a *mumble* but it fails.
- As a user of Mumbler, I would like to include my Gravatar information when I
  input my email.
- As a user of Mumbler, I should be able to "like" a *mumble*.
- As a user of Mumbler, I should be able to see how many "likes" a *mumble* has.

## Part 2 - Deployment

Create a Heroku application and deploy your application to it.

## Part 3 - Next Steps

If you are able to complete the above features (a big deal!), please move on to
implement the following features ***in order***.

#### Sorting

**As a user of Mumbler, I should see the *mumbles* ordered by date and time, from
newest to oldest.**

While it should be straightforward to order them by date, *within* a given date
it is confusing how to get them ordered correctly. It might make sense to add a
[**time** or **timestamp**](http://ruby-doc.org/core-2.2.0/Time.html)
to your mumbles: even if you set the date as of yesterday, your timestamp will
say it should be ordered at the top of yesterday's mumbles.

#### Filtering

**As a user of Mumbler, I should be able to filter the *mumbles* by author or
date.**

From a user experience / design perspective, would it make the most sense to
include a filter form (radio buttons and a text field) on the mumbles index, or
simply filter when we click on an author's name / thumbnail, or on a date for
any given mumble in the index?

From an implementation perspective, a common way to request a filtered list is
with query parameters attached to the index route, like this:

- author: `GET /mumbles?filter=true&author=kristin.eugenio@ga.co`
- date:   `GET /mumbles?filter=true&date=2015-12-24`
- both:   `GET /mumbles?filter=true&author=eugenius&date=2015-12-24`

#### Weather API Integration

**As a user of Mumbler, I would like to add a description of the weather to my
mumble by clicking on the checkbox "Include current weather?" in my new mumble
form.**

This means you would also need what information? Make sure that your form now
includes the necessary rules to make sure that a given user is guided towards
making their mumble correctly.

You can format the weather so that it says something like:

```
Mumbled while it's *light snow* and 23.7° F (-4.6° C).
```

And place it somewhere on your mumbles!

#### Tagging

**As a user of Mumbler, I would like to be able to see a list of all the used
tags, and then go to a list of mumbles with those tags.**

This is a BIG one!

First of all, our data structure makes it difficult to do this simply. We should
change it! Since we want a list of tags, that means we should treat `tags` as a
new resource. The correct route to access these would be `GET /tags`.

We will be creating `tags` when we create mumbles, so we should add to our
mumble creation logic something that creates a list of tags in our database.
Since we don't want to have more than one entry for any given tag, it would make
sense to use a [Redis set](http://redis.io/commands#set).

Finally, we should add another filter for our mumble index like above:

- `GET /mumbles?filter=true&tag=blessed`

From a user experience / design perspective, it would make sense to be able to link to the tag index from any page, and also to filter tags directly by clicking on the tags in our mumbles. This is another complex task!
