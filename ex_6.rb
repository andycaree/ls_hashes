# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but 
#  in a different order. 

# 1. Iterate over the words array, and for each word we want to...
#  -turn it into alphabetical order (i.e. 'mode' => 'demo' --- 'demo' will serve as the key) so we can create each key
#    -if the key exists we want to add to the key's list 
#    -else, create a new key with this word in the list


# the 'result' hash is created to capture all this
result = {}

# here we iterate through the 'words' array with the '.each' method
words.each do |word|

# next we sort the word
# an easy way is to 'split' (this splits each word up) and then call the 'sort' (this sorts them alphabetically) method on the array
# the 'join' method puts the separated letters back into a word
# after doing this we have the word in alphabetical order
# this is all stored in a variable named 'key'
# THIS IS WHERE THE KEY FOR THE HASH IS DEFINED
  key = word.split('').sort.join
    # checks whether 'result' hash already has the key: (`demo` for example), returns true if present (it runs the 'if' statement)
    if result.has_key?(key)
     # this condition runs as long as the key has already been added to the empty hash
     # this adds the particular word from the 'words' array that we are iterating through, to the key (in its original form, not alphabetized)
     # [key] is the resulting key from '.split', '.sort', and '.join'
     result[key].push(word)
    # false (the 'else' statement is run) when key is not present in 'result' hash
    else
      # this is where the key is added to the empty 'result' hash (this hash is empty in the beginning, so the conditional moves directly to the 'else')
      # it is added as a value in the form of an array
      result[key] = [word]
    end
end

# this code block iterates through the 'result' hash and prints out the values
result.each do |k, v|
  puts "------"
  p k, v
end