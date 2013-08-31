# Learn to Program
#
# Chapter 9. exercise 3
# 
# Modern Roman numerals.
#
#

def roman_numeral number
	
	def generate_hundred n
		hundred = n % 1000 / 100
		d = n % 1000 / 500
		c = n %  500 / 100 
		
		if hundred == 9
			str = "CM"
		elsif hundred == 4
			str = "CD"
		else
			str = "D" * d + "C" * c
		end
		return str			
	end

	def generate_ten n
		ten = n % 100 / 10
		l = n % 100 / 50
		x = n %  50 / 10
		if ten == 9
			str = "XC"
		elsif ten == 4
			str = "XL"
		else
			str = "L" * l + "X" * x
		end
		return str			
	end

	def generate_one n
		one = n % 10
		v = n % 10 / 5
		i = n %  5 / 1 
		if one == 9
			str = "IX"
		elsif one == 4
			str = "IV"
		else
			str = "V" * v + "I" * i
		end
		return str			
	end

	n_str = ""
	n_str = n_str + "M" * ( number / 1000 ) 
	n_str = n_str + generate_hundred( number )
	n_str = n_str + generate_ten( number )
	n_str = n_str + generate_one( number)
	
	return n_str
end

puts "Please input a number (< 3000) :"
num = gets.chomp.to_i
puts "The old roman number is:"
puts (roman_numeral num)