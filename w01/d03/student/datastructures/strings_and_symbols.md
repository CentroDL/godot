# Strings vs Symbols

Paste the following lines one at a time into pry and compare the output with your neighbor

```
"hello".class
"hello" == "hello"

greeting = "hello"
whatsup = "hello"

greeting == hello

"hello".object_id
whatsup.object_id
greeting.object_id

"hello".object_id == "hello".object_id
whatsup.object_id == greeting.object_id
greeting.upcase.object_id
greeting.upcase!.object_id
```

What are your neighbors object IDs?

Do the same with the following:

```
:hello.class
:hello == :hello
greeting = :hello
whatsup = :hello
greeting.object_id
whatsup.object_id
whatsup.upcase.object_id
whatsup.upcase!
whatsup.upcase!.object_id
greeting == whatsup
greeting.object_id == whatsup.object_id
```

Discuss what is happening.
