## Straight CURDin'

![image](http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2013/3/13/1363190066646/Best-Farmhouse-Cheese-Ins-008.jpg)

Today, you learned to CRUD. Tonight, you learn to *CURD*.

> Travis: This assignment goes whey back.
> ...(15 seconds elapse)...
> Sarah: 'whey back' rhymes with Maibach.
> Phil: Gouda one, Sarah. Gouda one.

#### Completion

Please finish through __Part 5__. As always: more is cheddar; healthy living is best.

#### Part 1: Setup

To set up your database with a `cheeses` table and some sample cheeses, run the commands below from within your `w09/d02/student` directory:

```bash
createdb straight_curdin_development
psql -d straight_curdin_development -f schema.sql
```

Great, now create a new rails app using the command below.

Create a new Rails app:

```bash
rails new straight_curdin -d postgresql -T --skip-turbolinks
```

#### Part 2: The Great Hall of Cheeses

Fulfill the following specification:

- GET requests to `/cheeses` should have a heading that says, "The Great Hall of Cheeses", followed by an unordered list of links to cheeses, i.e. `/cheeses/1`, `/cheeses/2`, `/cheeses/3`, and so on.

#### Part 3: "One Cheese at a Time, Bru!"
- GET requests to `/cheeses/1` should display the `name`, `milk_type`, `description`, and image (via `image_url`) of the cheese with the id of 1, while GET requests to `/cheeses/7` should display the information of the cheese with the id of 7.

#### Part 4: Putting the C in "CURD"

Fulfill the following specification:

- GET requests to `/cheeses/new` should take the visitor to a form for creating a new cheese.
- When the user submits the form, a new cheese is created in the database, and the user is redirected to The Great Hall of Cheeses. If all has gone according to plan, the newly created cheese should will show up in the list.

#### Part 5: Eat the Cheese, You Fool

Head back to the template for The Great Hall of Cheeses. Update it so that each cheese has a button beside it that says "Eat This Cheese", and clicking on that button removes the appropriate cheese from the database. The user should then be redirected to The Great Hall of Cheeses. If all has gone according to plan, the cheese you chose to destroy will not show up on the list.

#### Part 6: If Rocky Can Change, and the Soviet Hordes Can Change, So Can Cheese

Head back to the cheese's "show" template, and add a link to `/cheeses/THE_ID_OF_THE_CHEESE_IN_QUESTION/edit`. Clicking this link should take you to a form for editing the information for a particular cheese. The form's fields should be pre-populated with the values of the cheese. When the user submits this form, the changes to the cheese should be persisted to the database, and the user should be redirected to that cheese's "show" page. If all has gone according to plan, the changes you made to the cheese will be reflected on the cheese's show page.

#### Bonus

Fulfill the following specification:

- GET requests to `/cheesemongers_choice` should display the information of a randomly selected cheese.
- update the `cheeses` table in the database so that each cheese has a `stank_level` that defaults to the integer value `0`. 
- update the cheese's "show" page in the following ways:
    - add the stank level 
    - add a "Mold!" button. when the user clicks the button, it should increment the cheese's `stank_level` in the database and redirect to the cheese's show page.
