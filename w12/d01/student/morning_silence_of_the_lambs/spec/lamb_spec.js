describe('Lamb', function() {

  var lamb;

  beforeEach(function() {
    lamb = new Lamb();
  });

  it('should be able to say "baaa"', function(){
    expect( lamb.say() ).toEqual('baaa');
  });

  it('can be silenced', function(){
    lamb.silence();
    expect( lamb.say() ).toBeFalsy();
  });

  it('has wool by default', function(){
    expect( lamb.hasWool() ).toBeTruthy();
  });

  describe('wool', function(){
    it('returns "3 bags full"', function(){
      expect( lamb.wool() ).toEqual('3 bags full');
    });
  });

  describe('sheer', function(){
    it('deducts a bag of wool', function(){
      lamb.sheer();
      expect( lamb.wool() ).toEqual('2 bags full');
    });
  });

  describe('when it has been shorn 3 times', function(){
    it('returns false', function(){
      lamb.sheer();
      lamb.sheer();
      lamb.sheer();
      expect( lamb.hasWool() ).toBeFalsy();
    });
  });

});
