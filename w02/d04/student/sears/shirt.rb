class Shirt < Product

  def initialize(p,b, size, color, text)
    super(p,b)
    @size = size
    @color = color
    @text = text
  end
end

