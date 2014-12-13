class Shirt < Product

  attr_accessor:size,:color,:text

  def initialize (price,brand,s,c,t)
    super(price,brand)
    @size  = s
    @color = c
    @text  = t
  end

end
