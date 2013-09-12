# Learn to Program
#
# Chapter 10. exercise 1
# 
# 
# Rite of Passage: Sorting
#


def sort array                   # This "wraps" recursive_sort.
  recursive_sort array, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length == 0 
  smallest = unsorted_array.pop
  unsorted_array2 = []

  unsorted_array.each do |obj|
    if smallest > obj
      unsorted_array2 << smallest
      smallest = obj          
    else
      unsorted_array2 << obj
    end
  end  
  sorted_array << smallest
  recursive_sort unsorted_array2, sorted_array  
end

arr = [4, 3, 9, 7, 1, 2, 6, 8, 5]
puts "The origin array : #{arr.join(' ')}"
puts "The sorted array : #{sort(arr).join(' ')}"
