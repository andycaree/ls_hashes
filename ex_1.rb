# hash named 'family' with a bunch of key-value pairs
family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]
}

# a new hash named 'imm_fam' that contains only 
#  'sisters' and 'brothers' keys (the results of the 
#  '.select' method called on the 'family' hash)
#  everything after 'imm_fam' is a code block

imm_fam = family.select { |k,v| (k == :sisters || k == :brothers) }


# calling '.values' creates a new array that stores 
#  only the values of the hashes
# this is all to be stored in a new array, so the array created is 
#  put in a new array named 'arr'
# '.flatten' is needed because the new array created by '.values' 
#  is actually 2 nested arrays, so '.flatten' puts them all in 1 array

arr = imm_fam.values.flatten

# this prints the new array to the screen
p arr


  