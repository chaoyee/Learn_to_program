# Learn to Program
#
# Chapter 7. exercise 4
# 
# Leap year.
#
#

leap_years = []

puts "Leap year calculation!"
puts "Please input the starting year:"
start_year = gets.chomp.to_i
puts "Please input the ending year:"
end_year = gets.chomp.to_i

if start_year <= end_year
	for year in start_year..end_year
		if ( year % 4 ) == 0 
			if (( year % 100 ) != 0) || (( year % 400 ) == 0)
				leap_years.push year
			end		
		end
	end 
	puts "The leap years:"
	leap_years.each do |y|
		puts y	
	end
else
	puts "Invalid year input!"
end