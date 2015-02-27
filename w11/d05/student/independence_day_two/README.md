## Independence Day 2

![image](http://static.comicvine.com/uploads/original/10/106298/3763872-7663450062-indep.jpg)

Independence Day 2 is a go, so you've been tasked with building a single page web application to model the (mostly) destructive whims of a bunch of aliens. Basically, you're going to annihilate countries one by one. This will allow you to both work on your Ruby and Rails skills, as well as build on your newfound AJAX skills.

#### Part 1: Config

You have been provided with a model, migration, seed data, and API for the hundreds of countries of Earth. Get your application up and running with:

```bash
bundle install
rake db:create
rake db:migrate
rake db:seed
rails s
```

#### Part 2: Listing The Countries

Change the [`welcome/index.html.erb`](app/views/welcome/index.html.erb) file to list all the countries in your database. If the country has been annihilated, give the list-item the class of "annihilated".

#### Part 3: JavaScript Template

The HTML found within the "country-main" div in [`welcome/index.html.erb`](app/views/welcome/index.html.erb) has hardcoded values for the United States. Turn this into a template that can be reused with any country's values. Here's some stub data to test your template with.

```js
var stubData = {
  name: "Afghanistan",
  annihilated: false,
  language: "Persian"
  population: 29121286,
  area_in_sq_km: 647500,
  flag_image: "http://www.geonames.org/flags/x/af.gif"
}
```

#### Part 3: AJAX!

Allow the Alien overlords to click on a country in the countries list, and see the country's data displayed within the div with id of `"country-main"`. You'll use your template for this, and you'll retrieve the country data from `/countries/:id` using AJAX.

#### Part 4: More AJAX

By default, none of the countries are annihilated. Make it so that if the user clicks on the `annihilate!` checkbox, the country's `annihilated` value is updated to true in the database. If the update is successful, remove the annihilate checkbox (you can't un-annihilate something) and add the "annihilated" class to the paragraph tag with id of `"country-name"` and the corresponding list-item representing the country.

#### Part 5: Russia

Update your `countries` table so that a country can be an `ally`. Make it so that if a user clicks on Russia in the list, they don't have the option to annihilate. They can only ally :)

#### Part 6: Literary Enrichment!

Read this beautiful parable by Franz Kafka:

> The Emperor, so it runs, has sent a message to you, the humble subject, the insignificant shadow
> cowering in the remotest distance before the imperial sun; the Emperor from his deathbed has sent a 
> message to you alone. He has commanded the messenger to kneel down by the bed, and has whispered the 
> message to him; so much store did he lay on it that he ordered the messenger to whisper it back into 
> his ear again. Then by a nod of the head he has confirmed that it is right. Yes, before the assembled
> spectators of his death----all the obstructing walls have been broken down, and on the spacious and 
> lofty-mounting open staircases stand in a ring the great princes of the Empire--before all these he has
> delivered his message. The messenger immediately sets out on his journey; a powerful, an indefagitable man;
> now pushing with his right arm, now with his left, he cleaves a way for himself through the throng; if he
> encounters resistance he points to his breast, where the symbol of the sun glitters; the way, too is made
> easier for him than it would be for any other man. But the multitudes are so vast; their numbers have no
> end. If he could reach the open fields how fast he would fly, and soon doubtless you would hear the welcome
> hammering of his fists on your door. But instead how vainly does he wear out his strength; still he is only
> making his way through the chambers of the innermost palace; never will he get to the end of them; and if 
> he succeeded in that nothing would be gained; he must fight his way next down the stair; and if he succeeded
> in that nothing would be gained; the courts would still have to be crossed; and after the courts the second 
> outer palace; and once more stairs and courts; and once more another palace; and so on for thousands of 
> years; and if at last he should burst through the outermost gate--but never, never can that happen--the 
> imperial capital would lie before him, the center of the world, crammed to bursting with its own refuse.
> Nobody could fight his way through here, least of all one with a message from a dead man.--But you sit at
> your window when evening falls and dream it to yourself.

#### Part 7: Have a Restful Weekend

Seriously.

