# Learn to Program
#
# Chapter 7. exercise 3
# 
# Deaf grandma extend.
#
#

input = ''
bye_count = 0

puts "Hello! Sonny! How are you today?"
# input = gets.chomp

while ( input != "BYE" ) || ( bye_count < 3 )  do
  
  input = gets.chomp
  
  if (input == input.upcase ) && (input != "")
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
  
  if input == "BYE" 
    bye_count += 1
  else
    bye_count = 0 
  end
end 

puts "Good bye! Sonny!"
