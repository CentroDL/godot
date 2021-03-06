# Group Project Code Reviews

![:image](http://www.acc.umu.se/~zqad/cats/1174324818-code_review_kitty_not_pleased.b.jpg)

## Objectives

The objective of these code reviews is to:

1. Practice forking and running other applications from GitHub.
1. Practice working on an open-source project owned by someone else.
1. Continued practice in using GitHub's Issues and Pull-Request (PR) tools.
1. Developing and working on our "code vision", the ability to detect
   problems with code (often called, "code smells") and fix them.

## Directions

We will be working on the **4th floor from 2pm until 4:30pm**. The groups will 
work on one computer (*driver*) using a display for all members to see, but each
member can use their own computers to scan the code base. The *driver* should
be the only member of the group submitting Issues or PRs.

Once the code review is over, you can (optionally) continue with your team to 
check the Issues and PRs that have been submitted to you. You can close PRs or
merge them as necessary, and close Issues (labeling them as `duplicate`, 
`invalid`, or `wontfix`), assign them to team mates, or continue to message 
about them!

Suggested Timeline

|2:00pm&ndash;2:30pm|2:45pm&ndash;3:30pm|3:45pm&ndash;4:30pm|
|:-----------------:|:-----------------:|:-----------------:|
| Set Up Local Fork |   Submit Issues   |    Submit PRs     |

### Fork and clone another team's project

Make sure that you have a working version of the application running in
development locally. This includes a running and seeded database.

- [DaBZ (Dain, Brian, Sarah, Simons)][DABZ] will review **KaMMA** in Room 4E
- [DADS (DFlip, Angelina, Dennis, Sade)][DADS] will review **PACKers** in Room 4C
- [KaMMA Chameleon (Kamari, Melodie, Michael)][KaMMA] will review **DADS** in Hopper
- [PACKers (Patricio, Andres, Chadd, [Kristen] MacFarlance)][PACKers]
  review **DABZ** in Sagan

### Create Issues for the project

Use the application! Look for glaring problems. Are there broken links? Explore a little
further to see how the code is being used to make each feature and each page
work!

As you explore, create GitHub Issues that are clear, concise, well-written and
polite. They can often include code snippets, error logs, or images. **Each 
Issue should be tagged** as either a `question`, `bug`, or `enhancement` 
(suggestion).

When exploring the app, look especially for:

- broken features or errors!
- UX or usability problems: unclear navigation or problematic presentation of
  data or features
- [accessibility problems](/accessibility_guidelines.md)
- style or visual design problems, especially in mobile or small sizes
- incorrectly used or broken security (authorization or authentication)
- unclear directions or text (or inappropriate text) on the site or in the 
  README

### Submit PRs on the project

Find "code smells" and help by fixing them. Are there outstanding issues that you can fix?
Each commit should be something small, sensible, and easy to test. 
Each PR should be well written and explained.

When fixing stylistic errors and code smells, look especially for:

#### Style

- inconsistent and/or incorrect use of [JavaScript][js-style],
  [Ruby][rb-style] or [HTML/CSS][css-style] syntax
  including but not limited to:
  + indentation
  + "dead" code (commented out)
  + unused variables
  + white space misused
- uncommunicative variable and method names
- unclear code that seems overly complicated
- bad or broken English, or grammatical problems

#### Structure

- use of overly long methods (more than 5 or 6 expressions)
- use of instance variables where locals will do
- (Rails) assigning IDs manually in Active Record `.create`, `.new`, `.update`,
  `.find_by`, or `.where` methods
- (Rails) unused Routes, Controller actions, or Views
- (Rails) logic in the Controllers (*or in the Views!*) that can be moved to
  the Models
- (Rails) Assets structured incorrectly:
  + asset files are not required explicitly in the manifests
  + incorrect use of, or failure to use, the `/vendor` (or `/lib`) folder
  + not using Rails helpers to link to assets, or putting JS or CSS directly
    in to Views
- (Rails) failure to use helpers throughout and consistently
  + [`_url`/`_path`][url-path-helpers] route helpers
  + [`button_to`/`link_to`][button-link-helpers] URL helpers
  + [`form_tag`/`form_for`][form-helpers]
  + [`asset helpers`][asset-helpers]
  + the [`resources`][resources-helper] Route helper
- (Rails) failure to use partials for repeated View code

<!-- Links -->

[DABZ]:                https://github.com/godot-dabz/wdi_attendance
[DADS]:                https://github.com/godot-dads/wdi_admissions_app
[KaMMA]:               https://github.com/godot-kamma-chameleons/outcomes_tracker
[PACKers]:             https://github.com/godot-packers/quiz_app
[js-style]:            https://google-styleguide.googlecode.com/svn/trunk/javascriptguide.xml
[rb-style]:            https://github.com/bbatsov/ruby-style-guide
[css-style]:           https://google-styleguide.googlecode.com/svn/trunk/htmlcssguide.xml
[url-path-helpers]:    http://stackoverflow.com/questions/2350539/what-is-the-difference-between-url-and-path-while-using-the-routes-in-rails
[button-link-helpers]: http://api.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html
[form-helpers]:        http://guides.rubyonrails.org/form_helpers.html
[asset-helpers]:       http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html
[resources-helper]:    http://apidock.com/rails/ActionController/Resources/resources
