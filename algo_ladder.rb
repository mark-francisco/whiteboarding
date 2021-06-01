# # Write a function that returns the sum of all numbers in a given array.

# # NOTE: Do not use any built-in language functions that do this automatically for you.

# # Input: [1, 2, 3, 4]
# # Output: 10
# # Explanation: (1 + 2 + 3 + 4) = 10

# arr = [-2, 4, 6, 1]  #=> 9

# puts arr[-3]

######################
######################

#03: Basic Hash

# Given a string, find the most commonly occurring letter.

# input = “peter piper picked a peck of pickled peppers”
# # => "p"

# "hello" # => "l"

# # what if there is a tie for most common letter
# letter_count = { "p" => 4, "e" => 4, "t" => 1, "r" => 1, " " =>  }
# and i want to loop thru every char in input
#   in this loop, test that letter. meaning, check the letter_count hash.
#     if there's a key that matches the letter being tested, do a +=1 on that key's value.
#     else, if there's no key that matches that letter yet, then add a new key and set the value to 1."

# at the end, return every key that has the highest value # in the whole hash.

# letter_count.keys.max


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