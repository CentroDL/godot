class Train < Vehicle

  def pull_the_rope
    "Woo Woooo!"
  end

  def go_to(location)
    pull_the_rope
    super(location)
  end

end
