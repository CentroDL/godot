console.log("colors.js");

var colors = [
  "pink",
  "purple",
  "black",
  "gold",
  "yellow"
];

console.log("All that glitters is not " + colors[3] + "...");

var iLove = function(something) {
  var somethingUp = something.toUpperCase();
  return "I love " + somethingUp + "!";
};

var iLoveMost = iLove(colors[0]);
console.log(iLoveMost + " The most!");
console.log(iLove(colors[1]) + " The next most!");

// this is a standard while loop, it allows you to do things over and over

// var thingsILove = ["Kait","Christie","wedding planning"];
// var len = colors.length;
// var i = 0;
// while (i < len) {
//   // console.log(i + ": " + colors[i]);
//   console.log( iLove(colors[i]) );
//   thingsILove.push(iLove(colors[i]));
//   i += 1;
// }

// for loop
// a porpoise-built loop for iterating over arrays
var thingsILove = ["Kait","Christie","wedding planning"];

for (var i = 0, len = colors.length; i < len; i++) {
  // console.log(i + ": " + colors[i]);
  console.log( iLove(colors[i]) );
  thingsILove.push(iLove(colors[i]));
}

// conditionals
var name = "henry george christian hughes IV";
if (name.length === 10) {
  console.log("I love green!");
} else if (name.length < 10) {
  console.log("I love brown!");
} else {
  console.log("No!");
}

var isTwentyOne = function(person) {
  return person.age >= 21;
};
