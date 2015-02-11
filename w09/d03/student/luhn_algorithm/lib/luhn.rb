class Luhn

  def self.valid?(number)
    arr = number.to_s.split('').reverse
    arr.map! { |n| n.to_i }

    mod = arr.map.with_index do |num, id|
      if id.odd?
        num * 2
      else
        num
      end
    end

    digits_ar = mod.join.split('')
    digits_ar.map! { |num| num.to_i }
    digits = digits_ar.inject(:+)

    digits % 10 == 0

  end

end#Luhn
