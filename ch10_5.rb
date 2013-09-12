# Learn to Program
#
# Chapter 10. exercise 5
# 
# Ninety-nine Bottles of Beer on the Wall
#
require_relative 'ch10_4.rb'


n_start = 6                  
n_now = n_start
while n_now > 2
  puts english_number(n_now).capitalize + ' bottles of beer on the wall, ' +
  english_number(n_now) + ' bottles of beer!'
  n_now = n_now - 1
  puts 'Take one down, pass it around, ' +
  english_number(n_now) + ' bottles of beer on the wall!'
end
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
