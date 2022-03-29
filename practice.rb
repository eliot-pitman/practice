#Write a function that takes in an array of strings and returns the smallest string.


# ["hello","goodbye","hi"] output => "hi"

#make a function that takes in an array of strings

#loop that iterates through each string

#write a variable that takes in the length of the string

#if new string length is shorter than current variable length, the shorter string becomes the variable

#print variable

# def smallest_str(array)
#   n = array[0]
#   array.each do |i|
#     if i.length < n.length
#       n = i
#     end
#   end
#   p n
# end



# smallest_str(["hello","goodbye","hi"])

#6) Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).

#array = [4,3,2,5,7,5] 

#output = 4,200


# def array_product(array)
#   p array.inject(:*)
# end

# array_product([4,3,2,5,7,5])

# def roman_to_int(s)
#   n = 0
#   s = s.upcase
#   if s.include?("IV")
#     n = n + 4
#     s.slice! "IV"
#   end 
#   if s.include?("IX")
#     n = n + 9
#     s.slice! "IX"
#   end 
#   if s.include?("XL")
#     n = n + 50
#     s.slice! "XL"
#   end
#   if s.include?("XC")
#     n = n + 90
#     s.slice! "XC"
#   end
#   if s.include?("CD")
#     n = n + 400
#     s.slice! "CD"
#   end 
#   if s.include?("CM")
#     n = n + 900
#     s.slice! "CM"
#   end 
#   if s.empty?
#     p n
#   else
#     s = s.split(//)
#     s.map! do |letter|
#       if letter == "I"
#         n = n + 1
#       elsif letter == "V"
#         n = n + 5
#       elsif letter == "X"
#         n = n + 10
#       elsif letter == "L"
#         n = n + 50
#       elsif letter == "C"
#         n = n + 100
#       elsif letter == "D"
#         n = n + 500
#       elsif letter == "M"
#         n = n + 1000
#       else 
#         puts "wrong input"
#       end
#     end
#   end 
#   p n
# end

# roman_to_int("MMXIX")
          
# #CM = 900, XC = 90 and IV = 4.


#Write a function to find the longest common prefix string amongst an array of strings.

#If there is no common prefix, return an empty string "".

# def longest_common_prefix(strs)
#   return "" if strs.empty? 
#   s = ""
#   base = strs[0]
#   for i in 0..base.length-1
#       if strs.all?{|x| x[i] == base[i]}
#           s += base[i]
#       else
#           break
#       end
#   end
#   s
# end

# p longest_common_prefix(["hello","hell","hello","odbye","good", "whatsup", "googoo", "go", "goooo"])

#8) Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.

# def zero_count(array)
#   n = 0
#   array.map!(&:to_s)
#   array.each do |str|
#     m = str.count "0"
    
#     n = n + m
#   end
# p n 
# end

# zero_count([20,3,0,400,79,1000])


# p [20,3,0,400,79,000].to_s 

# "0011HelloWor00ld001".match(/^0+/).to_s.size

# array = [2,3,4,5]

# array.map!(&:to_s)

# p array[0].class

#9) Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.

#10) Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.

# ["hello", "goodbye", "albatross"]

# output = 2

# def a_count(array)
#   n = 0
#   for word in array
#     word = word.downcase
#     m = word.count "a" 
#     n = m + n
#   end 
#   p n
# end

# a_count(["hello", "goodbye", "albatross", "anna", "aardvark"])

# def two_sum(nums, target)
#   array = []
#   nums.each_with_index do |num,i|
#     nums.each_with_index do |num2, i2|
#       if num == num2
#         break
#       elsif num + num2 == target
#         array += [i, i2]
#         return array
#       end 
#     end 
#   end
# end


# def two_sum(nums, target)
#   #make an empty hash
#   dict = {}
#   #create a loop
#   nums.each_with_index do |n, i|
#     #checks to see if the target minus the current value equals one of the values in the hash
#     if dict[target - n]
#       #if it does it prints both indexes.
#       return dict[target - n], i
#     end
#     #add the next value,index pairing
#     dict[n] = i
#   end
# end

# p two_sum([3,2,12,24,4],6)


# Input: prices = [7,1,5,3,6,4]
# Output: 5

# def max_profit(prices)
#   buy = prices[0]
#   profit = 0
#   i = 0
#     while i < prices.size
#       if prices[i] < buy
#         buy = prices[i]
#       else
#         new_profit = prices[i] - buy
#         profit = [profit,new_profit].max
#       end
#     i += 1
#     end
#   p profit
# end

  

# def max_profit(prices)
#   buy = prices[0]
#   profit = 0
#   prices.each_with_index do |n,i|
#     if n < buy
#       buy = n
#     else
#       new_profit = n - buy
#       profit = [new_profit,profit].max
#     end
#   end
#   p profit
# end

# max_profit([7,1,5,3,6,4,10])

# def contains_duplicate(nums)
#   if nums == nums.uniq
#     return false
#   else
#     return true
#   end 
# end


# p contains_duplicate([2,3,1,3])

#Write a function that takes in an array of numbers and returns a new array of the same numbers without any duplicates.


#write a function that takes in an array
#write the array with array.unique!
#boom

# def unique_numbers(array)
#   p array.uniq
# end

# unique_numbers([1,2,3,4,4,4])

#Write a function that takes in an array of numbers and returns the largest product of any two numbers in the array.

#iterate through array 
#find the two largest numbers
#multiply those numbers


# def largest_product(array)
#   new_array = []
  
#   2.times do
#     largest_number = array.max
#     p largest_number
#     new_array << array.slice(largest_number)
#   end 
#   sum = new_array.inject(:*)
#   p sum
# end

# largest_product([3,2,4,4])

# def product_except_self(nums)
#   sum = []
#   nums.length.times do
#     n = nums.slice!(0)
#     sum << nums.inject(:*)
#     nums << n 
#   end
#   return sum
# end

# product_except_self([-1,1,0,-3,3])

# [3,4,5,1,2]

# def find_min(nums)
#   return nums.min 
# end

# p  find_min([3,4,5,1,2])

# Input: nums = [2,3,-2,4]
# Output: 6
# Explanation: [2,3] has the largest product 6.
# Example 2:

# Input: nums = [-2,0,-1]
# Output: 0
# Explanation: The result cannot be 2, because [-2,-1] is not a subarray.


# def max_product(nums)
#   max = 0
#   i = 0 
#   (nums.size-1).times do
#     product = nums[i] * (nums[i + 1])
#     if product > max 
#       max = product
#     end 
#   end
#   p max
# end

# max_product([2,3,-2,4])

# def most_words(array)
#   count = 0
#   array.each do |n|
#     if array.count(n) > count
#       count = array.count(n)
#       @biggest_word = n
#     end
#   end 
#   p @biggest_word
# end

# most_words(["hello","you","hello", "what", "yup","you","you"])

#5.  Write a function that takes in an array of numbers and returns all the pairs that add up to 10.

# array = [2,3,4,5,6,5,7]
# return = [[6,4],[7,3],[5,5]]

#iterate through array
#subtract num from 10
#create loop with map index
  #if result is in array
  #shovel num and result into new array
  #delete number at index
#put that in another array
# p array

# def return_pairs_of_ten(array)
#   new_array = []
#   for num in array do
#     difference = (10 - num)
#     p difference
#     array.each_with_index do |n,i|
#       if n == difference
#         new_array << [num,difference]
#         array.delete_at(i)
#       end
#     end
    
#   end
#   p new_array
  
# end

# return_pairs_of_ten([2,3,4,5,6,5,7])

# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]

# def three_sum(nums)
#   nums.combination(3).select {|triplet| triplet.sum.zero?}.map(&:sort).uniq
# end


# def three_sum(nums)
#   nums.combination(3).select {|triplet| triplet.sum.zero?}.map(&:sort).uniq
# end


# p three_sum([-1,0,1,2,-1,-4])


# Output: 49

#compare each pair of numbers
#take the largest of those two numbers
#find the distance between those two numbers in the array
#multiply the distance and lowest of the two numbers
#return largest number


# def max_area(height)
#   max = 0
#   loop do
#     i = 1
#     length = height.length - 1
#     length.times do
#       least = [height[0],height[i]].min
#       product = least * i
#       if product > max
#         max = product
#       end
#       i += 1
#     end
#     height.shift
#     if height.empty?
#       return max
#     end
#   end
# end

# p max_area([1,8,6,2,5,4,8,3,7])

<p>I am a software engineer proficient in:</p>
<p>Back-End Development - Rails</p>
<p>Database Design - Postgres, SQL</p>
<p>Front-End Development - HTML, CSS, JavaScript, Vue.js</p>
<p>Computer Science - Data structures,
algorithms</p>
<p>Version Control - Git, Github</p>