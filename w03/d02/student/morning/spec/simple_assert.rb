require 'colorize' # need the gem!

module SimpleAssert
  # desc: a string stating the expected behavior
  # object_one: the actual code
  # object_two: the expected outcome
  def assert_that(desc, object_one, object_two)
    pass_message = "Assertion #{desc} passed!".green

    # structure a well-colored failure message
    desc = desc.white
    actual_result   = " #{object_one.nil? ? 'nil' : object_one} ".white
    expected_result = " #{object_two.nil? ? 'nil' : object_two} ".white
    fail_message = 'Assertion '.red + desc + ' failed:'.red + \
                   actual_result + '!='.red + expected_result

    if object_one == object_two
      $stdout.puts(pass_message)
      true
    else
      $stderr.puts(fail_message)
      false
    end
  end
end
