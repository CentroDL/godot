class Luhn

  def self.valid?(number)

    #convert number into a string so we can split it
    arr = number.to_s.split('').reverse #reversed for iteration
    arr.map! { |n| n.to_i } #turns them back into integers

    #all odd indices get doubled
    modded_arr = arr.map.with_index do |num, id|
      if id.odd? #double every odd index
        num * 2
      else
        num
      end
    end

    digits_ar = modded_arr.join.split('') #splits double digit numbers
    digits_ar.map! { |num| num.to_i } #turns them into ints again

    digits = digits_ar.inject(:+)

    digits % 10 == 0

  end

end#Luhn
