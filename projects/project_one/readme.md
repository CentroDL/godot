# Project One

> It's time, homey.

**<span style="color:darkgreen">Build a light-weight, web-based, CRUD application.</span>**

1. This application is **light-weight** in that it uses a [minimalist application framework][min-frame] and very few [libraries][sweet-libs]. This does not mean that it is simple!

-  It is **web-based** in that it communicates using a [REST-compliant][rest] [HTTP interface][http] between its components. It will **serve** [static HTML][html] as its own interface, and be accessible from anywhere on the [World Wide Web][www]. It may also [*consume* a service][consume] in the form of another application's API, and will thus act as a **client**.

-  It is a **CRUD** application in that it persists data. The necessary features will thus be centered around offering users the ability to create, read, update, or destroy [resources][resource]. It may also allow a user to perform such actions via a JSON interface, and therefore can be said to [*produce* a service][produce] for its users.

## Lesson Objectives

1. Build confidence as a developer from building something of your own.
2. Manage yourself (your time and your emotions) when given a large amount of unstructured work.
3. Gain experience building a complex application.
4. Document your work and share it with the public in an effective and articulate manner.
5. Learn new technologies by reading documentation.
6. Learn how to request help from other developers.

## Outline

The dedicated project period is known as a ***sprint***. During this sprint, we will have daily ***stand-ups***, or short meetings with our classmates and instructors, every morning. The purpose of the stand-up is to set goals for the day and support one-another in our development tasks. The purpose of the sprint is to fulfill a set of required features known as an ***MVP***, or *minimum viable product*.

**The end of the sprint is not the end of the project**. The resulting application will be your first possible portfolio piece, and as such it would behoove us to continue to work on it in the months to come.

**Each student will be responsible for their own project**. This means the student has written every single piece of code that is not a part of a library, either by themselves or during a pair programming session. More importantly: **the student must be able to explain what every piece of code does**. Do not include code you do not understand!

## Pair Programming Sessions

See the weekly syllabus for pairing schedules.

## GitHub Issues

You will submit any requests for project help via GitHub issues, so that the instructional team can effectively queue students and know what exactly it is you need help with. [The submission process for GitHub issues is outlined here][github_issues_protocol].

## Feature Sets

#### [Team Microblog][microblog]

<span style="color:gray">A microblog allows users to create, devour, update, and delete miniature blog posts. You will be creating a team microblog, which allows a group of users to create posts on a shared feed. These posts can reference outside links and scrape useful information from them (like texts and images), and add novel commentary, like *"LOLZ"* or *"haters gonna hate"*.
</span>

> If you're interested in scraping data and building your fundamental CRUD skills, the Microblog suits you. 

#### [Dashboard][dashboard]

<span style="color:gray">A dashboard aggregates information for a user from a number of sources. The application offers a list of sources (known as *feeds*), and allows users to choose which feeds to receive, as well as personalize those feeds by (among other things) location and topic.</span>

> If you're interested in consuming APIs and developing complex graphical interfaces with HTML + CSS, the Dashboard will scratch a fantastic itch.

#### [Forum][forum]

<span style="color:gray">A forum is an application that allows users to discuss particular topics. Examples of popular forum topics include the NFL draft, Kanye West, and [the whereabouts of the Emperor when uppity teenagers destroyed his Deathstar](http://scifi.stackexchange.com/questions/67011/where-is-the-emperor-in-new-hope). Users can add their own messages to a forum category. Some forums even allow specific messages to be commented upon, as well as voting on content to determine which messages are the most informed/humorous.</span>

> If you're interested in data and want to focus on complex back-end work, the Forum will make a fine choice.

## Requirements

While finishing the MVP features is the primary *goal* of the project, there are further requirements that **must be completed** before or immediately after the project is due.

1. Write a `Readme` that includes:
  - the project's name and description,
  - APIs or Gems used and descriptions of each,
  - instructions for downloading the code and running it on localhost, and
  - instructions for running the accompanying test suite.
2. Present your work to the class on the final day of the project, and participate in the class retrospective.
3. (after) Deploy the application to Heroku (this will be the version of the application that you share with the class).
4. (after) Write a blog post about some aspect of the experience. [Examples can be found here](https://medium.com/wdi-nyc-jan-2014).

<!-- Links -->

[microblog]:  prompts/microblog.md
[forum]:      prompts/forum.md
[dashboard]:  prompts/dashboard.md

[min-frame]:  http://www.sinatrarb.com
[sweet-libs]: https://rubygems.org
[http]:       http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol
[html]:       http://en.wikipedia.org/wiki/HTML
[www]:        http://en.wikipedia.org/wiki/World_Wide_Web
[rest]:       http://en.wikipedia.org/wiki/Representational_state_transfer
[consume]:    http://www.quora.com/How-do-you-approach-consuming-a-RESTful-API-in-Ruby
[produce]:    http://www.speakingcode.com/2013/01/29/build-a-webservice-with-json-using-ruby-and-sinatra/
[resource]:   http://restful-api-design.readthedocs.org/en/latest/resources.html
[github_issues_protocol]: ../project_issues_protocol/project_issues_protocol.md
