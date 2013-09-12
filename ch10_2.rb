# Learn to Program
#
# Chapter 10. exercise 2
# 
# 
# Shuffle
#

def generate_index index_arr, length
  index = rand(0..(length - 1))
  while index_arr.include?(index)
    index = rand(0..(length - 1))
  end  
  return index
end

def shuffle arr
  suffle_array = [] 
  index_arr = []             # for recording the indices already be generated
  length = arr.length     
  length.times do
    index = generate_index index_arr, length
    index_arr << index
    suffle_array[index] = arr.pop
  end 
  return suffle_array   
end

# arr = [4, 3, 9, 7, 1, 2, 6, 8, 5]
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "The origin array : #{arr.join(' ')}"
10.times do
  arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  puts "The shuffle array : #{shuffle(arr).join(' ')}"
end