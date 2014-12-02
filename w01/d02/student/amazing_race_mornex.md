# The Amazing Race &ndash; South America

Are you all tired of learning program and dealing with this winter *already*? Well then, let's visit South America the best way we know how: as part of a ridiculous and somewhat offensive [reality TV show](http://en.wikipedia.org/wiki/The_Amazing_Race)!

<img alt="Map of South America" src="img/south_america.jpg" width="200px" />


## Installation & Setup

Install the The Amazing Race gem, and run it! Type the following in to your terminal:

```
$ cd ~/dev/wdi
$ gem install the_amazing_race
$ the_amazing_race
Building your map...
```

After that you should have a directory called `south_america` and one called `north_america` with a number of directories inside of it.

## Directions

We start our tour in **Miami**, **Florida**. To get there, we must head in to the directory `north_america`... Type the following:

```
$ cd north_america/florida/miami
```

What is there in Miami, Florida?

```
$ ls
south_beach
coconut_grove
miami_international_airport
```

Well then, let's go to the airport!

```
cd miami_international_airport
```

Now we are ready to begin!

### Leg 1: Miami to Bogotá

> Fly in to Bogotá, Colombia. Once there, we can follow the lead of [the former mayor](http://en.wikipedia.org/wiki/Antanas_Mockus) and use mimes to enforce regulations! We can go to the Plaza Bolívar and start handing out foolish and preposterous tickets to passers-by. Now *that's* television!

1. `cd` in to the directory `south_america`, where you can `cd` in to the directory `colombia`, and finally in to the directory `bogota`.
1. Once in `bogota`, go to the `plaza_bolivar`.
1. In the `plaza_bolivar`, create three files using `touch`:
  - `20_000_pesos_for_dog_barking`
  - `5000_pesos_for_socks_not_matching`
  - `10_000_pesos_for_frowning`

### Leg 2: Bogotá to Machu Picchu

> Fly in to Cuzco, Peru, and then head to Machu Picchu. Once you've climbed up to Machu Picchu, you have to "Rope a Basket" and then "Rope Some Llamas!"

1. `cd` into `peru/cuzco`.
1. `cd` back in to `peru`, and then `machu_picchu`.
1. Create the files `rope_basket` and `llama_pen`.
1. Using `echo` (`echo 'text' >> filename`) add the string "Llama" into the file `llama_pen`, **twice**!
1. Use `cat` to print the contents of the `llama_pen` to make sure both of them are in there!


### Leg 3: Machu Picchu to Iquitos

> barter for spit beer in iquitos, peru
`mv`

### Leg 4: Iquitos to Manaus

> go to manaus and perform at the opera house there
subl, copy http://opera.stanford.edu/Bizet/Carmen/acte1.html#num1
Act I, Scene 1

### Leg 5: Manaus to Rio de Janeiro

> rio and head to Largo de São Francisco de Paula for the Roadblock, asking "Who's not afraid of shaking in their boots?". One team member had to participate in a Rio Carnival parade. After putting on special costumes, teams learned the samba and then led a parade of dancers.

### Leg 6: Rio de Janeiro to Iguazu

> iguazu

### Leg 7: Iguazu to Patagonia

> patagonia

### Leg 8: Patagonia to Valparaíso

> valparaiso Ascensors (funiculars)

### Leg 9: Valparaíso to the Atacama

> drive up to atacama and mine salt

### Leg 10: The Atacama to La Paz

> go to a market in La Paz and buy a whole chola dress

### Leg 11: La Paz to Quito

> ...

### Leg 12: Quito to Miami

> ...

Nicely done! Welcome home guys: we've lost our dignity, but we made somewhat less than scale for a few weeks and might have a moderately lucrative endorsement deal in the works. Sounds like a great trade-off to me!
