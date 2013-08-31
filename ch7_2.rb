# Learn to Program
#
# Chapter 7. exercise 2
# 
# Deaf grandma.
#
#

puts "Hello! Sonny! How are you today?"
input = gets.chomp

while input != "BYE" do
	if (input == input.upcase ) && (input != "")
		puts "NO, NOT SINCE #{rand(1930..1950)}!"
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
	input = gets.chomp	
end 
