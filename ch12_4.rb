# Learn to Program
#
# Chapter 12. exercise 5
# 
# 
# Birthday Helper!
#

birthday_hash = {}
b_date = File.open('birthdays.txt').each_line do |line|
  line = line.chomp
  c = 0
  while !(line[c] == ',') && c < line.length 
    c += 1
  end  
  name = line[0..(c - 1)]
  date = line[-12..-1].strip                 # strip: remove the whitespace before and after the word.
  birthday_hash[name] = date
end  

puts "Who's birthday you want to know?"
person = gets.chomp
d = 0
date = birthday_hash[person]
while !(date[d] == ',') && d < date.length
  d += 1  
ends
birthday = date[0..(d -1)]
puts "#{person}'s birthday is : #{birthday}"

