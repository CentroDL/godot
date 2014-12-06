# Eliza, a ChatBot

### Code Exercise:

Eliza is a robot who responds to your questions. When the program starts, Eliza will say:

>"Hi there, I'm Eliza! Let's have a chat."

When the user inputs the string:

>"Goodbye."

... Eliza will end her conversation.

The user should see some visual prompt that they are talking to Eliza (in a different CLI "mode"), and that it's their turn to talk.

```
>> Hello Eliza.
"That's very interesting, tell me more."
```

Make sure that Eliza always responds to input. However, she should not respond the same way every time.

She should have several stock responses to declarative sentences (that end in a "."):

__Example exchange:__
```
>> Hey Eliza, I like turtles.
"That's very interesting, tell me more."

>> Well, it all started when I was a boy.
"You really think so?"

>> Honestly, now that I think about it, I'm not sure when it started.
"Why do you think that is?"
```

And for interrogatives (sentences that end in a "?"):
```
>> Have you heard any secrets lately, Eliza?
"Oh well, I don't know if there's much I can say about that."

>> So you have secrets but don't want to share them?
"Ha! You ask too much! Let's talk about you."
```

And for exclamations (sentences that end in a "!"):
```
>> There is a spider under my chair!
"NO!"

>> I'm having a breakdown!
"!!!!"
```

Finally, Eliza should know when the user is talking about her (by the presence of the second-person pronouns or her name: "you", "your", and "Eliza") and respond accordingly.

```
>> You have a lot of brain power.
"You know a lot about me."

>> If you had a dog, it would be a golden retriever.
"I'm an open book, I guess."
```

You can hard code answers to specific questions! For example:

```
>> What's your name?
"My name is Eliza! I already told you!"
```

#### For fun:

[http://en.wikipedia.org/wiki/ELIZA](http://en.wikipedia.org/wiki/ELIZA)
