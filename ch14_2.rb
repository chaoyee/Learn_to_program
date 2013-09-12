# Learn to Program
#
# Chapter 14. exercise 2
# 
# 
# Grandfather clock
#
def clock_dong &block
  h = Time.now.hour
  if h == 0
    h = 12
  elsif h >= 13
    h = h - 12
  end

  h.times do
    block.call
  end  
end

clock_dong do 
  puts 'DONG!'
end