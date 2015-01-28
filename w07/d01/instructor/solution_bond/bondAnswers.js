// Part 1: grossToNumber

// Write a method called `grossToNumber` that takes a gross as a string converts it
// into a number.

var grossToNumber = function(gross) {
  // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace
  // remove $ and ,
  var stripped = gross.replace("$", "").split(",").join("")
  // var stripped = gross.replace(/[$,]/g, ""); // using regular expressions
  return parseInt(stripped);
}

// Part 2: sumGrosses

// Write a method called `sumGrosses` that takes `bondFilms` and returns the sum of
// all the grosses as a number.
var sumGrosses = function(bondFilms) {
  // https://lodash.com/docs#map
  var grosses = _.map(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
  // https://lodash.com/docs#reduce
  var total = _.reduce(grosses, function(sum, n){
    return sum + n;
  });
  return total;
}

// Part 3: actorNames

// Write a method called `actorNames` that takes `bondFilms` and returns an array
// of strings of the names of the all actors who have ever played Bond, but with no
// duplicates.

var actorNames = function(bondFilms) {
  // https://lodash.com/docs#pluck
  var names = _.pluck(bondFilms, "actor");
  // https://lodash.com/docs#uniq
  return _.uniq(names);
}

// Part 4: oddBonds

// Write a method called `oddBonds` that takes `bondFilms` and returns an array of
// only the bondFilm objects with odd-numbered years.

var oddBonds = function(bondFilms) {
  // https://lodash.com/docs#filter
  return _.select(bondFilms, function(film) {
    // http://momentjs.com/docs/#/parsing/string/
    // http://momentjs.com/docs/#/get-set/year/
    var year = moment(film.releasedOn).year();
    return year % 2 == 0;
  });
}

// Part 5: worstGrossingBond

// Write a method called `worstGrossingBond` that takes `bondFilms` and returns a
// JavaScript object of the bond film with the lowest gross.

var worstGrossingBond = function(bondFilms) {
  // https://lodash.com/docs#min
  return _.min(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
}

// Part 6: highestGrossingBond

// Write a method called `highestGrossingBond` that takes `bondFilms` and
// returns a JavaScript object of the bond film with the highest gross.

var highestGrossingBond = function(bondFilms) {
  // https://lodash.com/docs#max
  return _.max(bondFilms, function(film){
    return grossToNumber(film.gross);
  });
}


// Part 7: moviesPerActor

// Write a method called `moviesPerActor` that takes `bondFilms` and returns a
// JavaScript object where the properties are the actors names and the values
// are their total number of films.

var moviesPerActor = function(bondFilms) {
  // https://lodash.com/docs#groupBy
  var filmsByActor = _.groupBy(bondFilms, "actor");
  // https://lodash.com/docs#forIn
  return _.forIn(filmsByActor, function(films, actor){
    return filmsByActor[actor] = films.length;
  })
}

// Part 8: sortByRelease

// Write a method called `sortByRelease` to sort the `bondFilms` array by year
// of release, with the earliest films first.

var sortByRelease = function(bondFilms) {
  // https://lodash.com/docs#sortBy
  return _.sortBy(bondFilms, function(film){
    return moment(film.releasedOn);
  });
}
// Part 9: titlesOfWordCount

// Write a method called `titlesOfWordCount` that takes the `bondFilms` as the
// first argument and a `numberOfWords` (a number) as the second parameter.  It
// should return an array of strings of titles with the specified number of
// words.

var titlesOfWordCount = function(bondFilms, numberOfWords) {
  var films = _.select(bondFilms, function(film){
    return film.title.split(" ").length == numberOfWords;
  });
  return _.pluck(films, "title");
}

// __Append each answer to the DOM in `index.html` as `li` tags under "ul#answers".__

var appendAnswer = function(answer) {
  var ul = document.querySelector("#answers");
  var li = document.createElement("li");
  li.textContent = JSON.stringify(answer);
  ul.appendChild(li);
}

var partOne   = grossToNumber( "$622,246,378" ),
    partTwo   = sumGrosses(bondFilms),
    partThree = actorNames(bondFilms),
    partFour  = oddBonds(bondFilms),
    partFive  = worstGrossingBond(bondFilms),
    partSix   = highestGrossingBond(bondFilms),
    partSeven = moviesPerActor(bondFilms),
    partEight = sortByRelease(bondFilms),
    partNine  = titlesOfWordCount(bondFilms, 2);

// https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload
window.onload = function(){
  appendAnswer( partOne );
  appendAnswer( partTwo );
  appendAnswer( partThree );
  appendAnswer( partFour );
  appendAnswer( partFive );
  appendAnswer( partSix );
  appendAnswer( partSeven );
  appendAnswer( partEight );
  appendAnswer( partNine );
};

