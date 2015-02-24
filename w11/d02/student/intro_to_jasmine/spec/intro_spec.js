// write your sleepIn function in src/intro.js
describe('sleepIn', function(){

  // this is a spec
  it('returns true for Saturday', function(){
    expect( sleepIn('Saturday') ).toBe(true);
  });

  it('returns true for Sunday', function(){
    expect( sleepIn('Sunday') ).toBe(true);
  });

  it('returns false for Monday', function(){
    // pending("This spec won't run until we comment it out this line.");
    expect( sleepIn('Monday') ).toBe(false);
  });

  it('returns false for any work day', function(){
    var workday = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
    var randomNumber = Math.floor(Math.random() * workday.length)
    var randomWorkday = workday[randomNumber];
    expect( sleepIn(randomWorkday) ).toBe(false);
  });

});

describe('pluralize', function(){

  it('turns an array into a comma separated string', function(){
    var list = ['lions', 'tigers', 'bears'];
    // pending("This won't run until we comment it out");
    expect( pluralize(list) ).toEqual( "lions, tigers and bears" );
  });

  it("turns any array into a comma separated string", function(){
    var snacks = [ 'doritos', 'cookies', 'candies', 'apples'];
    expect( pluralize(snacks) ).toEqual("doritos, cookies, candies and apples");
  });

});

describe('prettyTime', function(){
  it('converts seconds into a formatted string', function(){
    var seconds = 120;
    expect( prettyTime(seconds) ).toEqual( "2 minutes" );
  });
  it('handles minutes correctly', function(){
    var seconds = 165;
    expect( prettyTime(seconds) ).toEqual( "2 minutes and 45 seconds");
  });
});
