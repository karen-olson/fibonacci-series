require 'pry'

# def fibonacci(num)
#   arr = [0, 1]
#   i = 2
# 
#   while i <= num
#     new_number = arr[i-2] + arr[i-1]
#     arr.push(new_number)
#     i+=1
#   end
# 
#   arr.last
# end 

#   # create an empty array to hold the fibonacci sequence. manually enter the first 2 numbers bc they don't follow the pattern
#   # start the iterator at 2 because that's the index you're starting at
#     # get the next number by summing the previous two numbers
#     # add the new number to the end of the array
#     # increment the iterator
#   # return the last number in the array

def fibonacci(num)
  arr = [0, 1]

  return num if num < 2
  
  (num-1).times do
    sum = arr[0] + arr[1]
    arr = [arr[1], sum]
  end

  arr[1]
end

# create an array to hold two values. initially set them to 0 and 1 because these numbers start the sequence
# loop through the array num-1 times
# calculate the new number using the two existing numbers in the array
# put the value of the second number in place of the first
# put the new number in place of the second
# keep going until you've looped through num-1 times because of zero indexing
# return the most recent "new number" (sum of the previous two)

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end
# Please add your pseudocode to this file
# And a written explanation of your solution
