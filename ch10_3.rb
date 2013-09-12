# Learn to Program
#
# Chapter 10. exercise 3
# 
# 
# Dictionary sort
#
def dictionary_sort array                   # This "wraps" recursive_sort.
  recursive_sort array, []
end

def recursive_sort unsorted_array, sorted_array
  return sorted_array if unsorted_array.length == 0 
  smallest = unsorted_array.pop
  unsorted_array2 = []

  unsorted_array.each do |obj|
    if smallest.downcase > obj.downcase
      unsorted_array2 << smallest
      smallest = obj          
    else
      unsorted_array2 << obj
    end
  end  
  sorted_array << smallest
  recursive_sort unsorted_array2, sorted_array  
end

arr = ['Dimand', 'street', 'Baby', 'ENGLISH', 'pop', 'Hash', 'cake', 'Engine', 'cloud']
puts "The origin array : #{arr.join(' ')}"
puts "The sorted array : #{dictionary_sort(arr).join(' ')}"