## The Battle of Rivverun

![Riverrun](http://awoiaf.westeros.org/images/thumb/4/4a/Riverrun_by_Feliche.jpg/300px-Riverrun_by_Feliche.jpg)

> Bad news! The forces of House Stark and House Lannister are about to meet in battle and the Lannisters outnumber the Starks! This day could end in disaster!

You've been tasked with fixing `battle_of_riverrun.rb` so that the Starks win. To do this, you will have to use `require_relative` to load the forces of their allies in the `riverlands` folder, and then update the arithmetic.

#### Exercise objectives
- gain valuable repetitions requiring files via `require_relative`

#### Directions

1. Run the `battle_of_riverrun.rb` file
  - __Note:__ running this file will result in errors. That's by design!
1. `battle_of_riverrun.rb` references constants that are defined in other files, and those files haven't been brought into via `require_relative`. Examine the files within.
1. Use `require_relative` to bring missing constants into the file.
1. Repeat steps 1 - 3 until the Starks Win The Battle of Riverrun.

```
$ ruby battle_of_riverrun.rb
```

If your allies haven't arrived yet, you'll see **errors**. You must find them and require them via the correct file. 
