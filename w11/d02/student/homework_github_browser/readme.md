# Single Page Github Browser

![:image](http://webinos.org/files/2014/03/github_icon.png)

Today we learned about AJAX, which allows us to make HTTP requests from the
browser. This is an incredibly powerful tool, because it allows us to talk to a
server (and thus retrieve data) without reloading the page. Tonight you will use
the Github API to build a Single-Page Application to browse users and repos.

#### Exercise Objectives

- Use AJAX to dynamically update the page without refreshing the page.
- get additional experience working with event listeners
- practice self-directed learning

## Setup

You'll write your code inside of `github_api.js` and `index.html` and display 
the information in `index.html`

## Completion

**Please finish through Part Two.** As always: more is
better; healthy living is best. Only do the bonus if you have completed every
single part.

## Part One

[Searching for a User](https://developer.github.com/v3/users/#get-a-single-user)

Create an event listener so that when you enter a Github User's name and click "Seach for User", you perform an AJAX request to Github's API and retrieve the user's information. Display the user's info in `div.user-info`

Be sure to display the user's name, avatar, and number of public repos and gists.

## Part Two

[Displaying Repos](https://developer.github.com/v3/repos/#list-user-repositories)

Once you've displayed a user's information, add links to view all their repos. 
When a you display a user's information and click "View Repos for <USER>" perform another AJAX call to Github and render out a list of all their Repos.

Show each repo's name, description and language and a link to view the repo on Github.

## Party Three

[Displaying Gists](https://developer.github.com/v3/gists/#list-gists)

Once you've displayed a user's information, add links to view all their gists. 
When a you display a user's information and click "View Repos for <USER>" perform another AJAX call to Github and render out a list of all their gists.

Show each gist's name and a link to view the gist on Github.

## Party Four

[Searching for Code](https://developer.github.com/v3/search/#search-code)

Add a new form to search for code on Github. Allow a user to search by term and language.
Display a list of search results and provide links back to Github.

#### Resources
- [Github API](https://developer.github.com/v3/)
- [jQuery `$.ajax()` Documentation](http://api.jquery.com/jQuery.ajax/)
- [MDN `preventDefault` Documentation](https://developer.mozilla.org/en-US/docs/Web/API/event.preventDefault)
- [MDN `change` Event Documention](https://developer.mozilla.org/en-US/docs/Web/Events/change)
