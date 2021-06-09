# # Write a function that returns the sum of all numbers in a given array.

# # NOTE: Do not use any built-in language functions that do this automatically for you.

# # Input: [1, 2, 3, 4]
# # Output: 10
# # Explanation: (1 + 2 + 3 + 4) = 10

# arr = [-2, 4, 6, 1]  #=> 9

# puts arr[-3]

######################
######################

# #03: Basic Hash
# # Given a string, find the most commonly occurring letter.

# # input = “peter piper picked a peck of pickled peppers”
# # # => "p"
# # "hello" # => "l"

# # # what if there is a tie for most common letter
# # letter_count = { "p" => 4, "e" => 4, "t" => 1, "r" => 1, " " =>  }
# # and i want to loop thru every char in input
# #   in this loop, test that letter. meaning, check the letter_count hash.
# #     if there's a key that matches the letter being tested, do a +=1 on that key's value.
# #     else, if there's no key that matches that letter yet, then add a new key and set the value to 1."

# # at the end, return every key that has the highest value # in the whole hash.

# def most_common_letter(str)
#   letter_count = {}
#   i = 0
#   while i < str.length
#     if letter_count[str[i]]
#       letter_count[str[i]] += 1
#     else
#       letter_count[str[i]] = 1
#     end
#     i += 1
#   end
#   most_common_letters = letter_count.filter { |key|
#     letter_count[key] == letter_count.values.max
#   }
#   return most_common_letters.keys
# end

# pp most_common_letter("peeter piper picked a peck of pickled peppers")

######################
######################

# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

# "today i went and got $" => true
# "today i went and got money" => false

# "i love $$$$$$" => true

# # we need a fn that accepts 1 string called input
# # and we need an if statement to check for "$"
# #   if string contains "$" #=> return true
# #   else #=> return false
# # need to figure out a way to parse thru each character in input
# #     you can treat a string's char similar to an array's items
# #     while loop

# str = "asdf d" #=> length of 6 chars

# def has_dollar_sign(str)
#   i = 0                         #=> i is 5
#   while i < str.length          #=> run the loop as long as i < 6
#     if str[i] == "$"
#       return true
#     end
#     i += 1
#   end
#   return false
# end

# puts has_dollar_sign("asdf d")
# puts has_dollar_sign("asdf $")

# # return kicks you out of/short-circuits the whole loop and returns for the whole fn
# # break kicks you out of 1 individual loop

##################################################################
# hashes can help re-factor loops. 12:35pm CT.

# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

# given { "x" => 4, "y" => 5, "z" => 1 }
# want to return  { 4 => "x", 5 => "y", 1 => "z" }

# we're taking in 1 hash.
# we're creating 1 new hash.
# we're switching the keys and values.

# we need to go iterate thru each hash item
# we need to figure out how to grab the value of each hash item
# and we also need to figure out how to grab the key of each hash item

# slow down, ask for clarification from the interviewer every couple steps (convo-style, pair programming)
# do a few example inputs/outputs
# you can ask the interviewer clarifying questions ("this is our goal ___. does that make sense to you?"). you can ask if you can run the code too.
# more pseudocode of the high-level steps (so you have a blueprint that you can just quickly code along to)
# do 1 algo ladder problem per day. and write out the explanation of the code. then do them in JS.

# example = { "x" => 4, "y" => 5, "z" => 6 }

# def flip_hash(input_hash)
#   new_hash = {}
#   input_hash.each { |hash_item|
#     new_hash[hash_item[1]] = hash_item[0]
#   }
#   return new_hash
# end

# p flip_hash(example)

##################################################################
# # Given an array of strings, return a hash that provides of a count of how many times each string occurs.

# # Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

# # Output: {"Dewey" => 6, "Truman" => 5}

# # Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

# def count_hash_items(input_hash)
#   counts_hash = {}
#   input_hash.each { |hash_item|
#     if counts_hash[hash_item]
#       counts_hash[hash_item] += 1
#     else
#       counts_hash[hash_item] = 1
#     end
#   }
#   return counts_hash
# end

# pp count_hash_items(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])
# pp count_hash_items(["barry", "joe", "joe", "barry", "barry", "joe", "jello"])

##################################################################
##################################################################

# # Given a year, report if it is a leap year.
# # The tricky thing here is that a leap year in the Gregorian calendar occurs:
# # on every year that is evenly divisible by 4
# #   except every year that is evenly divisible by 100
# #     unless the year is also evenly divisible by 400

# # For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
# # If your language provides a method in the standard library that does this look-up, pretend it doesn't exist and implement it yourself.

# # 1997 => false
# # 1996 => true
# # 1992 => true
# # 2000 => true
# # 2100 => false
# # 400 BC => true

# # leap year if: divisible by 4 && (divisible by 400 && divisible by 100)

# def leap_year?(year)
#   if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
#     return true
#   else
#     return false
#   end
# end

# pp leap_year?(1997) #=> false
# pp leap_year?(1996) #=> true
# pp leap_year?(2000) #=> true
# pp leap_year?(2100) #=> false
# pp leap_year?(-400) #=> true

##################################################################
##################################################################

# 7:40

# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:
# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:
# {
#       'a' => 1,
#       'e' => 1,
#       'i' => 1,
#       'o' => 1,
#       'u' => 1
# }

# ["z","y","x"], 5
# { "z" => 5, "y" => 5, "x" => 5 }

# [1,2,3], 1
# { 1 => 1, 2 => 1, 3 => 1 }

# write a fn that takes 2 arg's: arr, num
# this fn will loop thru every item in the "arr" argument
# we will create a hash. then in each round of the loop, we will set a new hash item's key and value as follows: key = current arr item. value = "num" argument.
# return hash at the end.

# # arr1 = ["z","y","x"]
# # num1 = 12
# arr1 = ["a","s","d", "f"]
# num1 = 2

# def hashify(arr, num)
#   result_hash = {}
#   arr.each{ |arr_item|
#     result_hash[arr_item] = num
#   }
#   return result_hash
# end

# pp hashify(arr1, num1)

##################################################################
##################################################################

# # Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# # input = ["a", "b", "c", "d"]
# # Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# # input = ["a", "a", "c"] #=> ["aa", "ac", "aa", "ac", "ca", "ca"]
# # input = [1, "v", "c"] #=> ["1v", "1c", "v1", "vc", "c1", "cv"] (in this case you would have to do a .to_s)

# # write a fn that takes in 1 arr
# # create var called new_arr = []
# # set a var that tracks the current item that you're at. called anchor
# # set another var called next_index.
# # there will need to be 2 loops. in the inner loop, next_index gets incremented. in the outer loop, anchor gets incremented.

# # once anchor == arr.length - 1 && next_index == arr.length - 2, then stop the loop.
# # inside the loop, you need to compare to make sure that you don't create a string combo whenever anchor == next_index. anytime other than that, create a new string combo and put it in new_arr.

# input = ["a", "b", "c", "d"]
# # Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# def string_combos(arr)
#   new_arr = []
#   i = 0
#   while i < arr.length
#     next_i = 0
#     while next_i < arr.length
#       if i != next_i
#         new_arr << arr[i] + arr[next_i]
#       end
#       next_i += 1
#     end
#     i += 1
#   end
#   return new_arr
# end

# pp string_combos(input)

##################################################################
##################################################################
# # Write a function that gives the Nth number of the Fibonacci Sequence. The Fibonacci sequence begins with 0 and 1, and every number thereafter is the sum of the previous two numbers. So the sequence goes like this:

# # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, and so on until infinity...

# # Input: 9
# # Output: 21 (as this is the 9th number of the Fibonacci Sequence)

# def fibonacci(n)
#   fibonacci = [0, 1]
#   i = 0
#   while fibonacci.length < n
#     fibonacci << fibonacci[i] + fibonacci[i + 1]
#     i += 1
#   end
#   return fibonacci[-1]
# end

# pp fibonacci(9)
# pp fibonacci(10)
# pp fibonacci(11)
# pp fibonacci(5)
