# I'm on the 'Net!

<img alt="Octocat" src="https://octodex.github.com/images/total-eclipse-of-the-octocat.jpg" height="200">

## Setup

We're going to practice writing HTML and CSS and creating a 
[GitHub page](https://pages.github.com/) hosted (FOR FREE!) from your GitHub 
account.

### Completion

Attempt to complete every part. As always, the bonus is bonus!s

### Submission

Create a file in `~/dev/wdi/godot/w03/d02/student` called `hw.md`.
Add to that file:
  - a link to your new page
  - a link to the validation results from parts six and seven. below

Add, commit, push and submit it! And remember, `submit_hw` needs to be run from inside our class repo (`godot`).

## Part One

Outside of your WDI folder create a new project called `username.github.io`
(replace username with YOUR username from github.)

For example, Phil's would be `~/dev/phlco.github.io` and PJ's would be 
`~/dev/h4w5.github.io`

> Periods in my directory name? WHAAA? 

## Part Two
We're going to initailize a new git repo. Inside your new portfolio directory 
run the following commands

```
git init
```

Then we're going to use the `hub` gem to create a corresponding repo on Github

From inside your new project's folder run `hub create`

```
hub create
```

If it worked you should see something like the following: 

```
created repository: username/username.github.io
```

Run `git remote -v` to verify your remote repo. Then touch a file and push it 
to your new repo on github.

```
touch readme.md
git add .
git commit -m 'first commit'
git push
```

## Part Three

Create an `index.html` file.

Take your profile page and add to it links to your Github Profile page, your 
linkedin profile and a blog if you have one.

## Part Four

Create an additional page called `about.html` that inclues additional 
information about you. Make sure that your `index` and `about` pages are both 
linked to eachother with relative links.

## Part Five

Create and add a stylesheet for your styles. Use either CSS Reset or Normalize and your own stylesheet to softly style your information. We will return to this and make it better throughout the course!

## Part Six

Validate your HTML using the [W3C validator](http://validator.w3.org/).
Make the appropriate changes until all your HTML is valid.

## Part Seven

Validate your CSS using the [W3C validator](http://jigsaw.w3.org/css-validator/)
Make the appropriate changes until all your CSS is valid.

## Bonus

GO NUTS! Take ownership of your portfolio! Throughout the course as we learn more HTML, CSS and JavaScript you can add additional functionality.
