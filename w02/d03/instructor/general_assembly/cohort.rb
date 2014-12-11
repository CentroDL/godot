class Cohort
  attr_reader :name, :start_date, :roster

  def initialize(name, start_date)
    @name       = name
    @start_date = start_date
    @roster     = []
  end

  def add(student)
    roster << student # notice the lack of an @ symbol here... we're calling
                      # a method!
    "Welcome!"
  end
end
