

# Method that seaches an array and
# gives back the index number of value found
def  search_array (array, number)
  counter = 0
  index = []
  array.each do |value|
    index << counter if value == number
    counter += 1
  end
index.empty? ? nil : index
end


def fib(terms)
  # 1st version
  # fib_terms = []
  # if terms == 1
  #   fib_terms << 0
  # elsif terms == 2
  #   fib_terms << 0 << 1
  # else
  #   counter = 2
  #   fib_terms << 0 << 1
  #   while counter != terms
  #     fib_terms << fib_terms[-1] + fib_terms[-2]
  #     counter += 1
  #   end
  # end
  # return fib_terms

  # 2nd version - refactored
  fib_terms = []
  terms.times do |counter|
    if counter == 0
      fib_terms << 0
    elsif counter == 1
      fib_terms  << 1
    else
      fib_terms << fib_terms[-1] + fib_terms[-2]
    end
  end
  return fib_terms
end

# Sorting method, takes an array
# and returns sorted array
def sort(array)
  loop do
    flag = false
    array.each_index do |index|
      break if array[index] == array.last
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        flag = true
      end
    end
    break if flag == false
  end
  return array
end

# Driver code

# Search array print
number_array = [23, 5, 28, 87, 4, 8, 4, 10]
p search_array(number_array, 28)
p search_array(number_array, 87)
p search_array(number_array, 4)
p search_array(number_array, 100)


# Fibonacci print
p fib(1)
p fib(2)
p fib(3)
p fib(10)
p fib_100 = fib(100)
puts "The number is the same!" if fib_100.last == 218922995834555169026

# Sort array
# 1 - Give an unsorted array to the sort Method
# 2 - Method grabs the array and compares the first
# two numbers and puts them in order, then move one index up
# 3 - if end of array
#   3a - if positions were change in the last full array cycle
#   go back to line 2
#   3b - if no numbers were changed return sorted array
# Example to visualize iterations
# sort_array = [12, 6, 90, 5, 16]
# sort_array = [12, 6, 90, 5, 16]
# sort_array = [6, 12, 90, 5, 16]
# sort_array = [6, 12, 5, 90, 16]
# sort_array = [6, 12, 5, 16, 90]
# sort_array = [6, 5, 12, 16, 90]
# sort_array = [5, 6, 12, 16, 90]
# sort_array = [5, 6, 12, 16, 90]
sort_array = [12, 6, 90, 5, 16]
p sort(sort_array)
sort_array2 = [12, 6, 90, 5, -16.3, -1, 3, 456.2, 12, 0]
p sort(sort_array2)