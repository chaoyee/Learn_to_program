# Learn to Program
#
# Chapter 12. exercise 3
# 
# 
# Party like it’s roman_to_integer 'mcmxcix'!
#

def roman_to_integer roman
  digi_h ={'i' => 1, 'v' => 5, 'x' => 10, 'l' => 50, 'c' => 100, 'd' => 500, 'm' => 1000}
  total = 0
  pre = 0
  pointer = roman.length - 1
  while pointer >= 0
    c = roman[pointer].downcase
    pointer = pointer -1
    v = digi_h[c]
    if !v
      puts 'The digit is not a valid roman numeral!'
      return
    end  
    if v < pre
      v = v * -1
    else
      pre = v
    end  
    total = total + v
  end
  total
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
