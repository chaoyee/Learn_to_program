# Learn to Program
#
# Chapter 8. exercise 1
# 
# Building and sorting an array.
#
#

words = []
words_sort = []
flag = true
puts "Please type words as many as you want!"

while flag 
	input = gets.chomp
	if input != ""
		words.push input
	else
		flag = false
	end
end	

words_sort = words.sort

puts "The sorted words are:"
words_sort.each do |word|
	puts word
end
