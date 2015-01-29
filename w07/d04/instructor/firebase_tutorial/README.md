# Teach Yourself Firebase

### Part 1: What is Firebase?

Answer the following questions:

1. What is Firebase?
  + What is the company?
  + What is the technology?
1. Why would someone use it; what is it for?
1. What technologies does it replace?
  + What are the pros/cons of using it versus a competing technology?
1. How do you use it?
  + Where do you start when using it?

***Do not go on. We will answer the above questions as a class first!***

---

### Part 2: Begin Using Firebase

Sign up for [the service][firebase], if you haven't yet. Then log in.

Answer the following questions:

1. What did you get with your sign up?
1. What are the possible tools you can use to learn Firebase?


### Part 3: Do the [Tutorial][firebase-tutorial]!

When you are finished, answer the following questions. Remember: **don't just
_do_ the tutorial!** You are trying to learn this technology: play around and
explore within the framework of the tutorial. Test what you are doing *along the
way*!

1. What happens when you call `Firebase#set`?
  + Is there a difference between passing `Firebase#set` a `String`
    or an `Object` as a parameter? If so, what is it? If not, why not?
1. How is our "Firebase" structured?
1. What is the general rule for how data can be represented in our "Firebase"?
   That is, what data type(s) does it hold?
1. What is the difference between `Firebase#set` and `Firebase#push`?
1. What does `Firebase#push` return?
1. What does `Firebase#on` do? Have we seen this sort of function before?
1. What are the event types that Firebase offers us?
1. What is the purpose of a callback for a `child_added` function?
   + Is there more than one purpose?
   + What data is passed to the callback?
1. Do you have the word *undefined* showing up in your chat log? If so, why?
1. What happens if more than one of you uses the same URL Firebase data
  reference?

***Do not go on. We will answer the above questions as a class first!***

---

### Part 4: Beyond the Demo Code

1. Change the demo code to include an HTML `input` for the ID of the `Firebase`,
   and set it by default to your own from your demo.
1. Rewrite the script to dynamically link to a `Firebase` based on the contents
   of the `input`. Use the provided code for examples!
1. Link to one another's `Firebase`s and chat!

### Part 5: A Full Chat App

Now that you can set a Firebase, implement the following features:

1. Every message has a button with it that you can press to delete the message.
1. That button only exists for messages that you've created in this session,
   not the messages you've downloaded from Firebase (ie, via the `child_added`
   event).
1. Listen for `remove_child` events, and delete the messages from the DOM that
   people have removed.
1. Add another button that let's you update the text! When you click it the
   message turns into a text input with the current message in it. Make sure,
   as with remove, it is only on messages you created in this session.
1. Listen for updates, and make the changes locally.
1. Style the app!
1. Make it live online using [GitHub pages][gh-pages]. Create a project page
   "from scratch."

<!-- Links -->

[firebase]:          https://www.firebase.com
[firebase-tutorial]: https://www.firebase.com/tutorial/#gettingstarted
[gh-pages]:          https://pages.github.com
