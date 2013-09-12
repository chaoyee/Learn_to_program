# Learn to Program
#
# Chapter 12. exercise 2
# 
# 
# Happy Birthday!
#

puts 'What is your birth year?'
birth_year = gets.chomp
puts 'What is the monthof the year when you were born? (1~12)?'
birth_month = gets.chomp
puts 'What is the day of the month when you were born? (1~31)?'
birth_day = gets.chomp

birthday = Time.local(birth_year, birth_month, birth_day)
nowday   = Time.local(Time.now.year.to_i, birth_month, birth_day)

puts birthday.class
puts nowday.class

age = (nowday - birthday)
y = (age / (60*60*24*365)).to_i
puts "Your age is : #{y}"

y.times do
  puts 'SPANK!'
end