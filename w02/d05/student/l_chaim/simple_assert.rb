require 'colorize' # need the gem!

module SimpleAssert
  def assert_that(name, object_one, object_two)
    pass_message = "Assertion #{name} passed!".green

    # structure a well-colored failure message
    name = name.white
    actual_result   = " #{object_one.nil? ? "nil" : object_one} ".white
    expected_result = " #{object_two.nil? ? "nil" : object_two} ".white
    fail_message = "Assertion ".red + name + " failed:".red + \
                   actual_result + "!=".red + expected_result

    if object_one == object_two
      $stdout.puts(pass_message)
      true
    else
      $stderr.puts(fail_message)
      false
    end
  end
end