## Doin' That Dee Eye (WDI)

Today you began your introduction to Rails. Tonight, your introduction continues as you build out a simple web app to hold crucial information about your WDI cohort.

#### Completion

Completion for tonight's homework __is to get through part 5__.

#### Part 1: Read!

Carefully read the following portions of the Rails guides:
- [Rails Routing](http://guides.rubyonrails.org/routing.html)
- [Rails Controllers](http://guides.rubyonrails.org/action_controller_overview.html)
- [Rails Views](http://guides.rubyonrails.org/action_view_overview.html)

#### Part 2: Setup

1. Within today's `student` directory, create a new Rails app called `wdi_app` with a `postgresql` database
2. Create your database.
3. Run your server and make sure that visits to the "/" gives you the "Welcome Aboard" page

#### Part 3: The Welcome Page

Fulfill the following specification:

  - GET requests to `/` should welcome visitors to WDI, and provide links to `/instructors` and `/producer`

#### Part 4: Instructors

Fulfill the following specifications:
  - GET requests to `/instructors` should have a heading that says, "Instructors:", and an unordered list of links to:
    - `/instructors/pj` 
    - `/instructors/travis` 
    - `/instructors/phil` 
  - GET requests to `/instructors/phil` should have a heading that says, "Phil Lamplugh", followed by [a photo of Phil](https://ga-core-production-herokuapp-com.global.ssl.fastly.net/assets/education/web-development-immersive/people/NYC-Phil-Lamplugh-53fc8ba1b22bdcca048cac54fcee7cc2.jpg).
  - Similarly, GET requests to `/instructors/pj` and `/instructors/travis` should display the name and photo of the appropriate instructor
  
#### Part 5: Producer

  - GET requests to `/producer` should have a heading that says "Sarah Maibach" and display an embedded [YouTube video of Sarah giving a speech at Pitzer college](https://www.youtube.com/watch?v=eRiG9sd7Bcs)

#### Part 6: The Students 

1. Within your `wdi_app_development` database, create a table called `students`. Each student should have a `name` and an `image_url`.
1. Create several student records.
1. Within your Rails app, create a `Student` model and make it inherit from ActiveRecord.
1. Alter the template that gets rendered when users hit the root so that there is also a link to `/students`.
1. Fulfill the following specifications:
  -  GET requests to `/students` should have a heading that says, "Students:", followed by an unordered list of links to students, ie `/students/1`, `/students/2`, `/students/3`, and so on.
  - GET requests to `/students/1` should display the name and photo of the student with the `id` of 1, while GET requests to `/students/13` should display the information of the student with the `id` of 3.

#### Useful Command-Line Commands

- `rails new APP_NAME -d DATABASE_MANAGEMENT_SYSTEM_OF_CHOICE`
- `rake db:create`
- `rake db:migrate`
- `rake db:seed`
- `rails server`
- `rails console`
- `rails db`
