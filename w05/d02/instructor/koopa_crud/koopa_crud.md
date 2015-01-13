## Koopa CRUD

<img style="float: right" src="http://img1.wikia.nocookie.net/__cb20120731023107/agk/images/7/75/Koopa_Troopa_3D_Land.png">
<img style="float: right" src="http://img1.wikia.nocookie.net/__cb20121115112607/fantendo/images/f/fb/ParatroopaNewArt.png">
<img style="float: right" src="http://www.mariowiki.com/images/thumb/e/e5/ParatroopaNSMBU.png/200px-ParatroopaNSMBU.png">
<img style="float: right" src="http://www.gamexplain.com/ckfinder/userfiles/images/000(1).jpg">

Bowser has commissioned you to design a Sinatra application for creating, reading, and destroying Koopas via web browser. If you fail him, it's curtains for Peach, so __you must not fail him__.

#### Part 1

1. Build out a Sinatra app in your `w05/d02/student/koopa_crud` directory.
1. Set up a *redis database* for your app. Make sure it works.

#### Part 2

1. Using your knowledge of routes and forms, make your app meet the following specs:
- GET requests to `'/'` should welcome Bowser to the application and provide a link for viewing the koopa gallery at `'/koopas'`
- GET requests to `'/koopas/new'` should display a form for creating a new koopa
  - Each koopa should have the following attributes:
    - `name`
    - `color` 
    - `photo_url`
    - `has_shell` (a boolean)
      - make the form input for `has_shell` a **radio button** that's checked by default
      - make the color input a select box of colors
- GET requests to `'/koopas'` should display all the koopas
  - each list entry at `'/koopas'` should dynamically link to the appropriate koopa profile page.
- GET requests to `'/koopas/4'` should display the profile page for the koopa with id of 4. (Similarly, GET `'/koopas/6'` should display koopa #6's profile.)
  - each profile page should have a form for destroying that particular koopa
- Make sure your creations and destructions persist 

#### Part 3:
- Implement a `koopa_kill_count` that increments whenever a koopa is destroyed. 
- Display the kill count in the header of all pages in an intimidating red font.

#### Part 4

1. Place a "JUMP" button next to each koopas name at '/koopas'
 - The first time you click on "JUMP" it should change the koopa's `has_shell` boolean.
 - The second time you click on that "JUMP" button it should delete that koopa (because it no longe has a shell.
