// part 1
var grossToNumber = function(gross){
  return parseInt(gross.replace('$', '').split(",").join(''));
}
// part 2
var sumGrosses = function(films){
  //var sum = _.reduce(films, function(sum,n){ return sum + grossToNumber(n.gross) });
  //return sum;
  var sum = 0;
  for (var i=0, len=films.length; i<len;i++ ){
    sum += grossToNumber(films[i].gross);
  }
  return sum;
// 13,821,621,224
}
// part 3
//var evens = _.filter([1, 2, 3, 4, 5, 6], function(num) { return num % 2 == 0; });
var actorNames = function(films){
  var names = [];
  for(var i=0, len=films.length; i<len; i++){
    names.push(films[i].actor);
  }
  return _.uniq(names);
}

//_.filter(bondFilms, function(film){ return _.contains(actorNames, film.actor)});
// part 4
var oddBonds = function(films){
  return _.filter( films, function(film){
    return new Date(film.releasedOn).getFullYear() % 2 != 0
  });
};

// part 5
var worstGrossingBond = function(films){
  return _.min(films, function(film){ return grossToNumber(film.gross)});
}
// part 6
var highestGrossingBond = function(films){
  return _.max(films, function(film){ return grossToNumber(film.gross)});
};
// part 7
var moviesPerActor = function(){};

// part 8
var sortByRelease = function(){};
// part 9
var titlesOfWordCount = function(){};

var li;
var answers = document.getElementById("answers");


window.addEventListener("load", function(){
// part 1
li = document.createElement("li");
li.textContent = "The gross of \"" + bondFilms[0].title + "\" was " + grossToNumber(bondFilms[0].gross) + " dollars.";
answers.appendChild(li);
// part 2
li = document.createElement("li");
li.textContent = "The gross of all films was $" + sumGrosses(bondFilms);
answers.appendChild(li);
// part 3
li = document.createElement("li");
li.textContent = "The bond actors array is: " + actorNames(bondFilms);
answers.appendChild(li);
// part 4
li = document.createElement("li");
li.textContent = "The odd bond movies are: " + JSON.stringify( oddBonds(bondFilms), null, "\t" );
answers.appendChild(li);

// part 5
li = document.createElement("li");
li.textContent = "The worst grossing bond was: " + JSON.stringify(worstGrossingBond(bondFilms));
answers.appendChild(li);
// part 6
li = document.createElement("li");
li.textContent = "The highest grossing bond was: " + JSON.stringify(highestGrossingBond(bondFilms));
answers.appendChild(li);
// part 7
// part 8
// part 9
});

