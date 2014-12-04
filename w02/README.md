# Week 2 - Object-Oriented Programming

### What did we do [last week](/w01/README.md)?

- **Our Development Environment**: We used the terminal (or *command-line interface*, CLI) to navigate and manipulate our filesystem, run programs, edit text files, work with I/O (input and output) and configure and interact with our operating system. We also introduced important tools in the terminal like REPLs (`irb` & `pry`), interpreters (`ruby`) and editors (`nano`), as well as in our GUI: window managers (*Spectacle*, eg) and text editors (*Sublime*).
- **Introduction to Programming**: We began the process of solving problems with software, and learning the fundamental structures of procedural programming:  I/O, conditionals, loops, procedures, data types and data structures.
- **Version Control with Git and GitHub**: We familiarized ourselves with the concept of versioning (updating, staging, committing and navigating the history of repositories) using the CLI tool Git. We also began to use the online service GitHub to allow us to share our Git repositories (or *repos*) and collaborate on them.

### What are we doing this week?

|    | Monday | Tuesday | Wednesday | Thursday | Friday |
|---:|:------:|:-------:|:---------:|:--------:|:------:|
| **Lessons** | Blocks & Enumerations | Classes<br>OOP (Part 1: Classical Inheritance) | Modules<br>OOP (Part 2: Mixins & Composition) | Redis | Assessment & Lab |
| **Events &amp; Panels** | Lunch Event:<br/>Meet the October cohort | Outcomes<br/>(4pm - 5pm) | | | |

### Suggested Readings for Class

For general introductory material about writing Ruby:

- [Chris Pine's Learn to Program, Chapters 9-11](http://pine.fm/LearnToProgram/). Also can be found [here](http://it-ebooks.info/book/36/) if the link is broken...

Here is a list of readings, tutorials, and examples for this week's lessons:

- **Blocks**
  - [the section called Blocks in Why's Poignant Guide for the best short explanation](http://mislav.uniqpath.com/poignant-guide/book/chapter-3.html)
  - [a maybe too in-depth explanation about blocks, procs, and lambdas in Ruby](http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/)
- **Enumeration Methods**
  - [Using these methods](http://www.eriktrautman.com/posts/ruby-explained-map-select-and-other-enumerable-methods)
  - more practice with [Ruby Monk](http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/44-collections/lessons/98-iterate-filtrate-and-transform)
- **Object-Oriented Programming**
  - [The Ruby Object Model](http://www.hokstad.com/ruby-object-model)
  - [the Pragmatic Guide's in-depth intro to Classes and Objects in Ruby](http://phrogz.net/programmingruby/tut_classes.html)
  - [Inheritance (Classical and Mixin), and Composition](http://naildrivin5.com/blog/2012/12/19/re-use-in-oo-inheritance.html)
- **[Redis](http://try.redis.io/)**

### What are we doing [next week](/w03/README.md)?

- **Understanding Networking (HTTP)**: We will learn about how computers communicate with one another over networks. We will see how that communication is very complicated to perform, but that the complexity is abstracted away from both end users and programmers by using a protocol stack (TCP/IP). We will also discuss the very common *application layer* to that stack, known as Hypertext Transfer Protocol or HTTP, and how it is the basis for the World Wide Web (WWW) and "web" applications. We will interact with other computers via plain HTTP as well.
- **Introduction to the Web as an Application Platform (Sinatra)**: We will build our first programs that interact over the web with end users and their browser clients. These applications will accept GET and POST requests, persist data, and serve HTML & CSS to browsers. We will use a simple Rack-based framework known as Sinatra to structure our "apps."