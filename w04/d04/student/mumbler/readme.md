# Mumbler

<img name="Sorry guys, this is the best image I could find about blogging." alt="Blog." src="public/images/shoot-me.jpg">

> Speak up! I can't hear you over the overwhelming noise that is modern life!

So far we have learned to create, index and show resources using a RESTful web
interface with the Sinatra framework. We have also learned how to persist and
retrieve this data with a simple key-value store: Redis. Finally, we've accessed
data via web APIs and JSON, and seen how to integrate this data into our
programs.

## Setup

There is no code provided other than the `config.ru`. You should have sufficient
examples from the last week of code exercises to guide your development. There
is a general folder structure and a few assets that we've provided, however.

Your application should be namespaced as `Mumbler`.

#### Explanations

Create a simple, unauthenticated microblog. A microblog is a web application or
platform that allows very simple messages to be posted and shared. Our microblog
is for young, hip people. People too cool to write a lot or speak clearly. God
forbid they use correct spelling. Each of their posts is called a `mumble`.

![Cool kids hang out sadly.](public/images/mumblecore.jpg)

> so um... uh... whaddoyou guys think of life?.. like, it's really, um... hard?
> right?...

The resources our website serves up are therefore `/mumbles`. A `mumble` has the
following attributes (necessary ones in bold):

- **`text`**
- `image`
- `date`
- `tags`
- **`author_email`**
- `author_handle`
- `author_thumbnail`
- **`likes`** (always is initialized to `0`)

If our resource is a `mumble`, then in Redis we would expect to have:

- a unique id incrementer, `mumble_id`
- a list of unique ids, `mumble_ids`
- a series of hashes, stored as `mumble:a_unique_id`

Finally, the routes we are going to honor in our app are:

- `GET /mumbles`,     **INDEX**:  list all mumbles
- `GET /mumbles/:id`, **SHOW**:   display a single mumble
- `GET /mumbles/new`, **NEW**:    display a new mumble form
- `POST /mumbles`,    **CREATE**: persist a new mumble to our database

#### Completion

**Please finish through Part Four.** Try for Part Five. As always: more is
better; healthy living is best. Only do the bonus if you have completed every
single part.

## Part 1 - Set up the Database

Write a **`seed.rb`** file with at least *one* mumble embedded in it, to ensure
that your database is working correctly, and that you have working Ruby code to
create and persist a mumble.

The mumble should be:

- `text`:             `"Thinking about time, and what it does to us..."`
- `image`:            `"http://goo.gl/scTB1I"`
- `date`:             `"2014-11-03"`
- `tags`:             `"#thuglife #beauty"`
- `author_email`:     `"kristin.eugenio@generalassemb.ly"`
- `author_handle`:    `"eugenius"`
- `author_thumbnail`: `"http://photos-d.ak.instagram.com/hphotos-ak-xpf1/10554197_777637282292435_572425562_a.jpg"`
- `likes`:            `1`

## Part 2 - Make a Show Mumble Route

Present a single Mumble. You can use the stylesheet from `WDInstagram` as a
starting point if you wish, or create one from scratch. Do not spend much time
styling yet! *Timebox any CSS to 15 minutes, maximum.*

## Part 3 - Form to Create a New Mumble

Write the HTML to present a new mumble form. Make sure you include all of the
necessary fields! Check this by running a `binding.pry` in your route handler
and looking at the `params`.

Don't add a field for `likes`; they have to start at `0`!

## Part 4 - Create Mumbles with Defaults and Check Input

Now, make sure that we can create mumbles! First, you should check to see if the
user has entered the necessary data. The necessary data are:

- **text**
- **author_email**

If they have not entered either of these fields, redirect back to the form with-
out doing anything!

Next, [merge](http://www.ruby-doc.org/core-2.1.5/Hash.html#method-i-merge-21) in the default values for any field the user did not fill out. The default values are:

- `image`:            `""`
- `date`:             (whatever date today is)
- `tags`:             `""`
- `author_handle`:    `"anonymous"`
- `author_thumbnail`: `"http://goo.gl/KQUfGE"`
- `likes`:            `0`

Finally, save the new mumble to your database, and redirect to the SHOW route
for that mumble.

## Part 5 - Use Gravatar to Insert Smart Defaults

Use the [Gravatar docs](https://en.gravatar.com/site/implement/profiles/json) to
figure out how to check and see if, given an email, we can set their thumbnail
image and handle to a universal preference!

- `author_handle` from Gravatar's `prefferedUsername`
- `author_thumbnail` from Gravatar's `thumbnailUrl`

If they did not enter either of these fields, and do not have a Gravatar, then
they fall back to the above defaults.

## Part 6 - Add Mumble Index

Have a page where you list all of your current mumbles.

## Part 7 - Style

Attempt to create a tiled-image style, as seen below:

![](http://38.media.tumblr.com/themes/screenshots/eNGwZ62uobxPTzYm_o1.png)

## Bonus

1. When there is missing form data, instead of just redirecting to the form
   again, redirect to `GET /mumbles/new?error=true` and use that to display
   an error message: "Missing necessary fields." Also flag those fields.
2. Allow people to "like" mumbles.

<img name="I lied: this is the best image I could find about blogging!" alt="Dog blogger!" src="public/images/dog-blogger.jpg">
