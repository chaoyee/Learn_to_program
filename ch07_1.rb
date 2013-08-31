# Learn to Program
#
# Chapter 7. exercise 1
# 99 Bottles of Beer on the Wall.
#
# Lyrics of the song 99 Bottles of Beer
#
# 99 bottles of beer on the wall, 99 bottles of beer.
# Take one down and pass it around, 98 bottles of beer on the wall.
#
# 98 bottles of beer on the wall, 98 bottles of beer.
# Take one down and pass it around, 97 bottles of beer on the wall.
#                  :
# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down and pass it around, 1 bottle of beer on the wall.
#
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take one down and pass it around, no more bottles of beer on the wall.
#
# No more bottles of beer on the wall, no more bottles of beer. 
# Go to the store and buy some more, 99 bottles of beer on the wall.
#

bottles = 99
while bottles > 1 do
	puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
	puts "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
	puts
	bottles -= 1
end

puts "1 bottle of beer on the wall, 1 bottle of beer."
puts "Take one down and pass it around, no more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall, no more bottles of beer." 
puts "Go to the store and buy some more, 99 bottles of beer on the wall."


