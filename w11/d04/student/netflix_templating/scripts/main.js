//==============================================
// Leave Commented Out! (For an upcoming example)
//==============================================
var movies = [
  { title: "Chef", imgURL: "http://cdn5.nflximg.net/webp/9665/11949665.webp" },
  { title: "House of Cards", imgURL: "http://cdn7.nflximg.net/webp/7677/11747677.webp" },
  { title: "His Girl Friday", imgURL: "http://cdn0.nflximg.net/images/0030/2210030.jpg" },
  { title: "Chinatown", imgURL: "http://cdn0.nflximg.net/images/3158/11143158.jpg" },
  { title: "What's Eating Gilbert Grape?", imgURL: "http://cdn9.nflximg.net/webp/1459/8191459.webp" },
  { title: "Robocop (1987)", imgURL: "http://cdn6.nflximg.net/webp/0456/8730456.webp" }
];


var peepShow = {
  title: "Peep Show",
  year: "2003-2012",
  genre: "Comedy",
  totalRatings: 473727,
  starCount: 4.0,
  parentalRating: "NR",
  imgURL: "http://cdn3.nflximg.net/webp/9673/69673.webp",
  description: "Thrown out by his girlfriend, slacker Jeremy moves in with his friend Mark, who has a very different -- but still dysfunctional -- view of the world.",
  seasonCount: 8,
  creator: "Sam Bain",
  subtitleLanguage: "English",
  audioLanguage: "English"
};

var breakingBad = {
  title: "Breaking Bad",
  year: "2008-2012",
  genre: "Crime Drama",
  totalRatings: 12880172,
  starCount: 4.5,
  parentalRating: "TV-MA",
  imgURL: "http://cdn4.nflximg.net/webp/7884/4177884.webp",
  description: "A high school chemistry teacher dying of cancer teams with a former student to secure his family's future by manufacturing and selling crystal meth.",
  seasonCount: 5,
  creator: "Vince Gilligan",
  subtitleLanguage: "English",
  audioLanguage: "English"
};

$(document).ready(function(){
  console.log("main.js connected");

  // caches references to commonly needed DOM elements
  var $header = $("header"),
      $main   = $(".main");

  var showTemplateSource = $("#show-template").html();
  // console.log(showTemplateSource);
  var generateShowHTML = _.template(showTemplateSource);
  // console.log(generateShowHTML);
  var breakingBadHTML = generateShowHTML(breakingBad);
  var peepShowHTML = generateShowHTML(peepShow);

  // $main.append(breakingBadHTML);
  $main.append(peepShowHTML);

  var userTemplateSource = $("#user-template").html();

  var generateUserHTML = _.template(userTemplateSource);
  console.log(generateUserHTML);

  // var user = { name: "Dan", imageURL:"http://www.nndb.com/people/244/000025169/da-sized.jpg"};

  // var userHTML = generateUserHTML(user);
  // $header.append(userHTML);

  var listViewTemplateSource = $("#list-view-template").html();

  var listViewTemplateFunction = _.template(listViewTemplateSource);
  var moviesHTMLString = listViewTemplateFunction(movies);

  $main.append(moviesHTMLString);


});
