describe('hangman', function(){

  it('stores all logic in an object literal', function(){
    expect( typeof hangman ).toEqual('object');
  });

  describe('hangman.dasherize(word)', function(){

    var word, letters, dashes;

    beforeAll(function(){
      word = 'dog';
      letters = word.split('');
      dashes = hangman.dasherize(word);
    });

    it('returns an array', function(){
      expect( Array.isArray(dashes) ).toBe(true);
    });

    it('is the same length of the word', function(){
      expect( dashes.length ).toEqual( word.length );
    });

    it('contains only dashes', function(){
      expect( dashes ).toContain('-');
    });

    it('does not contain any letters', function(){
      expect( dashes ).not.toContain(jasmine.arrayContaining( letters ));
    });

  });

  describe('hangman.set(word)', function(){

    var word;

    beforeAll(function(){
      word = 'farmer';
      hangman.set(word);
    });

    it('sets the word as a property', function(){
      expect( hangman._word).toBe(word);
    });

    it('sets the dasherized version of the word as a property', function(){
      expect( hangman.word ).toEqual(['-', '-', '-', '-', '-', '-']);
    });

  });

  describe('hangman.includes(letter)', function(){

    var word;

    beforeAll(function(){
      word = 'mustard';
      hangman.set(word);
    });

    it('returns true if letter is in the word', function(){
      expect( hangman.includes('m') ).toBe(true);
    });

    it('returns false if letter is not in the word', function(){
      expect( hangman.includes('z') ).toBe(false);
    });

  });

  describe('hangman.reveal(letter)', function(){

    it('replaces dashes with correct letters', function(){
      var word = 'stump';
      hangman.set(word);
      hangman.reveal('u');
      expect( hangman.word ).toEqual(['-', '-', 'u', '-', '-']);
    });

  });

  describe('hangman.new(word)', function(){

    var word;

    beforeEach(function(){
      spyOn(hangman, 'set');
      word = 'bells';
      hangman.new(word);
    });


    it('calls set interally', function(){
      expect(hangman.set).toHaveBeenCalled();
    });

    it('sets guesses to 0', function(){
      expect(hangman.guesses).toEqual(0);
    });

  });

  describe('hangman.guess(letter)', function(){

    var word, correctLetter, incorrectLetter;

    beforeEach(function(){
      word = 'blankets';
      correctLetter = 'b';
      incorrectLetter = 'j';
      hangman.new(word);
    });

    describe('an incorrect guess', function(){

      beforeEach(function(){
        hangman.guess( incorrectLetter );
      });

      it('increments guesses', function(){
        expect( hangman.guesses ).toEqual(1);
      });

      it('does not reveal any letters', function(){
        expect( hangman.word ).not.toContain( incorrectLetter )
      });

    });

    describe('a correct guess', function(){

      beforeEach(function(){
        hangman.guess( correctLetter );
      });

      it('does not increment guesses', function(){
        expect( hangman.guesses ).toEqual(0);
      });

      it('reveals letters', function(){
        expect( hangman.word ).toContain( correctLetter );
      });

    });

  });

}); // hangman
