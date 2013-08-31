# Learn to Program
#
# Chapter 9. exercise 2
# 
# Old-school Roman numerals.
#
#

def old_roman_numeral number
	n_str = ""
	n_str = n_str + "M" * ( number / 1000 ) 
	n_str = n_str + "D" * ( number % 1000 / 500 )
	n_str = n_str + "C" * ( number %  500 / 100 )
	n_str = n_str + "L" * ( number %  100 /  50 )
	n_str = n_str + "X" * ( number %   50 /  10 )
	n_str = n_str + "V" * ( number %   10 /   5 )
	n_str = n_str + "I" * ( number %    5 /   1 )
	return n_str
end

puts "Please input a number (< 3000) :"
num = gets.chomp.to_i
puts "The old roman number is:"
puts (old_roman_numeral num)