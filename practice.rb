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