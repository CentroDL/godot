describe("overEighteen", function(){
  it("returns false for dates under eighteen years ago", function(){
    expect( overEighteen("2014/02/01") ).toBe(false);
  });
  it("returns true for dates over eighteen years ago", function(){
    expect( overEighteen("1977/02/01") ).toBe(true);
  });
});
