describe("LambView", function(){
  var lamb, lambView;
  beforeEach(function(){
    lamb = new Lamb();
    lambView = new LambView(lamb);
  });
  it("takes a new lamb object and sets it as it's model", function(){
    expect(lambView.model).toBe(lamb);
  });
  it("has a render method", function(){
    var lamb = new Lamb();
    var lambView = new LambView(lamb);
    var htmlFrag = '<p class="lamb">baaa</p>';
    expect( lambView.render() ).toEqual(htmlFrag);
  });
  describe("when it's been silenced", function(){
    it("renders a silent lamb", function(){
      var lamb = new Lamb();
      var lambView = new LambView(lamb);
      var htmlFrag = '<p class="silent lamb">...</p>';
      expect( lambView.render() ).toEqual(htmlFrag);
    });
  });
});
