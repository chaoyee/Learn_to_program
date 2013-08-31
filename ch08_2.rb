# Learn to Program
#
# Chapter 8. exercise 2
# 
# Table of contents, revisited.
#
#

left_length  = 30
right_length = 30
lines = []


lines.push "Table of Contents".center( left_length + right_length ) 
lines.push "     "
lines.push "Chapter 1: Getting Started".ljust(left_length) + "page  1".rjust(right_length)
lines.push "Chapter 2: Numbers".ljust(left_length) + "page  9".rjust(right_length)
lines.push "Chapter 3: Letters".ljust(left_length) + "page 13".rjust(right_length)

lines.each do |line|
	puts line
end 
