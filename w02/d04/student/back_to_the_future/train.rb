class Train < Vehicle

  def pull_the_rope
    "Woo woooo!"
  end

  def go_to(location)
    pull_the_rope + "\n" + super(location)
  end
end
