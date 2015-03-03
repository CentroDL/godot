xdescribe('person', function(){

  var person, lotion, basket;

  person = new Person({gender: 'female'}),
  lotion = {
    brand: 'Jurgens',
    ounces: 32,
    squeeze: function(){this.ounces--}
  },
  basket = [];

  it('takes the lotion', function(){
    person.take(lotion);
    expect( person.hasLotion() ).toBe(true);
  });

  it('rubs the lotion on its skin', function(){
    spyOn(lotion, 'squeeze').and.callFake(function(){});
    person.applyLotion();

    expect( lotion.squeeze ).toHaveBeenCalled();
    expect( person.isLotioned() ).toBe(true);
  });

  it('places the lotion in the basket', function(){
    person.place(lotion, basket);

    expect( person.hasLotion() ).toBe(false);
    expect( basket ).toEqual([lotion]);
  });

});
