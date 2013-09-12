# Learn to Program
#
# Chapter 14. exercise 1
# 
# 
# Even better profiling
#

def profile block_description, &block
  # To turn profiling on/off, set 'on' true/false.
  on = false
  if on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

