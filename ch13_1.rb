# Learn to Program
#
# Chapter 13. exercise 1
# 
# 
# Extend the built-in classes: shuffle
#

class Array
  def shuffle
    arr = self
    shuffle_array = [] 
    index_arr = []             # for recording the indices already be generated
    length = arr.length     
    length.times do
      index = rand(0..(length - 1))
      while index_arr.include?(index)
        index = rand(0..(length - 1))
      end  
      index_arr << index
      shuffle_array[index] = arr.pop
    end 
    return shuffle_array   
  end
