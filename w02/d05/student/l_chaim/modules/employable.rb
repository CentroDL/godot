module Employable

  attr_accessor :job

  def work
    puts "I really hate my #{@job} job"
  end

  def get_a_job!
    @job = (brain[:interests] + brain[:skills]).sample
  end
end
