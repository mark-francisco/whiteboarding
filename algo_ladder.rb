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

##################################################################
##################################################################

# # You are given a hash in format #A, and you are to return the same data as a hash using format #B, as specified below:

# # take the hash's values & split them out into separate hash items. each value in the previous arr becomes its own key.
# # and the old key becomes the new value.
# # sort by key a-z at the end.

# def transform_hash(hash)
#   new_hash = {}
#   hash.each { |key, value|
#     i = 0
#     while i < value.length
#       new_hash[value[i]] = key
#       i += 1
#     end
#   }
#   return new_hash
#   # next step is to sort and lowercase the stuff

#   # look at each hash item individually: 1 loop to loop thru the hash items.
#   # each individual hash item's value is an arr. that arr can have 1 or multiple "arr items".
#   # 2nd inner loop to loop thru the arr items.
#   # every time in the loop, create a new hash where the current "arr item" is the key and the current hash_item is the value.

#   # after both loops are done, sort new_hash a-z
# end

# hash1 = {
#   1 => ["A", "E"],
#   2 => ["D", "G"],
# }

# pp transform_hash(hash1)
# # think about re-factoring later if there's time

# # given:
# # hash1 = {
# #   1 => ["A", "E"],
# #   2 => ["D", "G"],
# # }

# # output:
# # {
# #   'a' => 1,
# #   'd' => 2,
# #   'e' => 1,
# #   'g' => 2
# # }

##################################################################
##################################################################

# 7:40
# Given a DNA strand, return its RNA complement (per RNA transcription).
# Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

# Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

# G becomes C
# C becomes G
# T becomes A
# A becomes U

# So based on all this, here's a sample input/output:

# Input:    'ACGTGGTCTTAA'
# Output: 'UGCACCAGAAUU'

# input: 'GATCAC'
# output: 'CUAGUG'

# input: 'ACTG'
# output: 'UGAC'

# write a method that accepts 1 argument (str)
# look at each letter in str and make the appropriate translation
# return new RNA-ified string
# re-factor: see if you can do this "in place" without creating any new data

# def rna_transcription(str)
#   rna = ""
#   str.each_char { |letter|
#     if letter.downcase == "g"
#       rna += "C"
#     elsif letter.downcase == "c"
#       rna += "G"
#     elsif letter.downcase == "t"
#       rna += "A"
#     elsif letter.downcase == "a"
#       rna += "U"
#     end
#   }
#   return rna
# end

# a = "ACGTGGTCTTAA"
# b = "GATCAC"
# c = "ACTG"

# pp rna_transcription(a) # Output: 'UGCACCAGAAUU'
# pp rna_transcription(b) # output: 'CUAGUG'
# pp rna_transcription(c) # output: 'UGAC'

# def rna_transcription(str)
#   str.each_char.with_index { |letter, i|
#     pp i
#     if letter.downcase == "g"
#       str[i] = "C"
#     elsif letter.downcase == "c"
#       str[i] = "G"
#     elsif letter.downcase == "t"
#       str[i] = "A"
#     elsif letter.downcase == "a"
#       str[i] = "U"
#     end
#   }
#   return str
# end

# a = "ACGTGGTCTTAA"
# b = "GATCAC"
# c = "ACTG"

# pp rna_transcription(a) # Output: 'UGCACCAGAAUU'
# pp rna_transcription(b) # output: 'CUAGUG'
# pp rna_transcription(c) # output: 'UGAC'

##################################################################
##################################################################

# # Write a function that returns whether a given number is a prime number.

# # 7 => true
# # 3 => true
# # 13 => true
# # 9 => false

# # write a method that takes 1 argument (num)
# # i = 2. do a loop. start at 2. end at num.
# # return false if num is divisible by i.
# # otherwise, after the loop, return true.
# def prime?(num)
#   i = 2
#   while i < num
#     if num % i == 0
#       return false
#     end
#     i += 1
#   end
#   return true
# end

# # edge cases: negative numbers should always return false. 1 should return false.
# # edge cases: run the loop only while i <= sqrt(num). because the highest number pair thing that num can be divisible by is sqrt(num). bc if you had any number higher than that, you would be checking the converse of a divisible pair that you already passed.

# # pp prime?(7)
# # pp prime?(3)
# # pp prime?(13)
# # pp prime?(9)
# # pp prime?(12)

####################################################
####################################################

# Chapter 8 Exercises:
#
# def intersection(arr1, arr2)
#   if arr1.length > arr2.length
#     larger_arr = arr1
#     smaller_arr = arr2
#   else
#     larger_arr = arr2
#     smaller_arr = arr1
#   end

#   lookup_hash = {}

#   larger_arr.each do |arr_item|
#     lookup_hash[arr_item] = true
#   end

#   result = []

#   smaller_arr.each do |arr_item|
#     if lookup_hash[arr_item]
#       result << arr_item
#     end
#   end
#   return result
# end

# pp intersection([1, 2, 3, 4, 5], [0, 2, 4, 6, 8])
# pp intersection([1, 2, 3, 9, 6, 5], [2, 6, 6, 9, 8])

################################################
################################################

# def first_duplicate(arr)
#   lookup_hash = {}
#   arr.each { |arr_item|
#     if lookup_hash[arr_item]
#       return arr_item
#     end
#     lookup_hash[arr_item] = true
#   }
# end

# pp first_duplicate(["a", "b", "c", "d", "c", "e", "f"])
# pp first_duplicate(["a", "b", "c", "b", "d", "d", "c", "e", "f"])

################################################
################################################

# def missing_letter(str)
#   alphabet = {
#     "a" => true,
#     "b" => true,
#     "c" => true,
#     "d" => true,
#     "e" => true,
#     "f" => true,
#     "g" => true,
#     "h" => true,
#     "i" => true,
#     "j" => true,
#     "k" => true,
#     "l" => true,
#     "m" => true,
#     "n" => true,
#     "o" => true,
#     "p" => true,
#     "q" => true,
#     "r" => true,
#     "s" => true,
#     "t" => true,
#     "u" => true,
#     "v" => true,
#     "w" => true,
#     "x" => true,
#     "y" => true,
#     "z" => true,
#   }

#   str.each_char { |letter|
#     if alphabet[letter]
#       alphabet.delete(letter)
#     end
#   }
#   return alphabet.keys[0]
# end

# pp missing_letter("the quick brown box jumps over a lazy dog")

################################################
################################################

# def first_non_duplicate(str)
#   lookup_hash = {}
#   str.each_char { |letter|
#     if lookup_hash[letter]
#       lookup_hash[letter] += 1
#     else
#       lookup_hash[letter] = 1
#     end
#   }
#   return lookup_hash.find { |key, _value|
#            lookup_hash[key] == 1
#          }[0]
# end

# pp first_non_duplicate("minimum")
# pp first_non_duplicate("vvllaatse")

##################################################################
##################################################################

# # Given two strings, return true if they are anagrams of each other, and false if they are not.
# # An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.
# # Do not use any built-in sort methods.

# # Input: “silent”, “listen”
# # Output: true

# # Input: “frog”, “bear”
# # Output: false

# # input: "asdf", "ddddddddas"
# # output: true

# # function that returns true or false.
# # it counts as long as you can make the word with the given letters. you can double up letters.
# # solve with a hash.
# # no .include. no .find. no .sort.

# def anagram?(str1, str2)
#   test_hash = {}
#   str1.each_char { |char|
#     if !test_hash[char]
#       test_hash[char] = 1
#     elsif test_hash[char]
#       test_hash[char] += 1
#     end
#   }
#   str2.each_char { |char|
#     if !test_hash[char]
#       return false
#     end
#   }
#   puts test_hash
#   if you didn't find any non-matches, so return true
#   return true
# end

# pp anagram?("silent", "listen")
# pp anagram?("frog", "bear") #false
# pp anagram?("ddddddddas", "asdf") #true

##################################################################
##################################################################
# # Given an array of social media posts and a hash of users, return a list of posts (as an array of hashes) that replaces the submitted_by id number as the person's actual name.
# # For example, given this array of posts (note that the submitted_by is an id number):

# # [
# # {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
# # {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
# # {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
# # {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
# # ]

# # And this hash of users (the key is the id number and the value is the user's real name):
# users = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }

# # Return the array of posts as follows:
# # [
# # {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
# # {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
# # {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
# # {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644}
# # ]

# # we have an arr "posts"
# # we have a hash "users"
# # return an arr of hashes of all posts
# # update the original hash

# # takes in arr of posts and hash of users
# def update_hash(posts)
#   users = { 403 => "Aunty Em", 231 => "Joelle P.", 989 => "Lyndon Johnson", 111 => "Patti Q." }
#   posts.each do |post|
#     post[:submitted_by] = users[post[:submitted_by]]
#   end
# end

# posts1 = [
#   { title: "Me Eating Pizza", submitted_by: 231, likes: 1549 },
#   { title: "i never knew how cool i was until now", submitted_by: 989, likes: 3 },
#   { title: "best selfie evar!!!", submitted_by: 111, likes: 1092 },
#   { title: "Mondays are the worst", submitted_by: 403, likes: 644 },
# ]
# pp update_hash(posts1)
