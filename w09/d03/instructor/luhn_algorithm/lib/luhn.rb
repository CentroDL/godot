class Luhn
  def self.valid?(number)
    # creates array of digits (as strings) and reverses them for easier traversal via index
    digits_reversed = number.to_s.reverse.split('')
    # creates array of strings, every other of which is doubled
    result_of_doubling_every_other = digits_reversed.map.with_index do |digit, index|
      if index.odd?
        (digit.to_i * 2).to_s
      else
        (digit.to_i).to_s
      end
    end
    # joins all the array values into a single string, and splits them back up into digits
    # to account for cases that created double digit numbers like 10, because
    # we want to sum the DIGITS 1 and 0 rather than add 10 outright.
    # then we turn the values into an array of Fixnums and sum them up via #reduce(:+)
    sum = result_of_doubling_every_other.join.split('').map(&:to_i).reduce(:+)
    sum % 10 == 0
  end
end
