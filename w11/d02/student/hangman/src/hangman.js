var hangman = {};

hangman.new = function(word){
  this.set(word);
  this.guesses = 0;
}

hangman.set = function(word) {
  this._word = word;
  this.word = this.dasherize(word);
}

hangman.dasherize = function(word) {
  var dashes = [];
  for (var i = 0, len = word.length; i < len; i++) {
    dashes.push("-");
  }
  return dashes;
}

hangman.includes = function(letter) {
  return this._word.indexOf(letter) !== -1;
}

hangman.guess = function(letter) {
  if ( this.continue() ) {
    this.handle(letter);
  } else {
    return "Game Over";
  }
}

hangman.handle = function(letter) {
  if ( !this.includes(letter) ) {
    this.guesses += 1;
  } else {
    this.reveal(letter);
  }
}

hangman.continue = function(){
  return this.guesses < 5;
}

hangman.reveal = function(letter) {
  for (var i = 0, len = this.word.length; i < len; i++) {
    if (this._word[i] === letter) {
      this.word.splice(i, 1, letter);
    }
  }
  return this.word;
}
