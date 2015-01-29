# A Full Chat App

![:image](http://www.heyuguys.com/images/2010/11/Chatroom1.jpg)

Today's homework will continue with the Firebase tutorial from today.

## Completion

**Please finish through Part 3.** As always: more is better; healthy living is
best. Only do the bonus if you have completed every single part.

## Setup

Now that you can set a Firebase, implement the features below. You can continue
work in your index file from the tutorial or use the included index.html.

Before you get started it's in your best interest to review parts 
[2 Understanding Data](https://www.firebase.com/docs/web/guide/understanding-data.html), 
[3 Saving Data](https://www.firebase.com/docs/web/guide/saving-data.html) and 
[4 Retrieving Data](https://www.firebase.com/docs/web/guide/retrieving-data.html) of 
the [Firebase quickstart guide](https://www.firebase.com/docs/web/guide/).

### Part 1

Every message should have a button with it that you can click to delete the
message.

### Part 2

That buttons should only exist for messages that you've created in this session,
not the messages you've downloaded from Firebase (ie, via the `child_added`
event).

### Part 3

Listen for `remove_child` events, and delete the messages from the DOM that
people have removed.

### Part 4

Add another button that let's you update the text!  When you click this new
button the message should turn into a text input with the current message in it.
Make sure, as with remove, it is only on messages you created in this session.

### Part 5

Listen for updates from Firebase, and make the changes locally.

# Bonuses

1. Style the app! 1. Make it live online using [GitHub
pages](https://pages.github.com/)

# Resources

- [Firebase Docs](https://www.firebase.com/docs/web/)
