# What method could you use to find out if a Hash contains a specific value in it? 
#  Write a program to demonstrate this use.



arf = { name: "ed", age: 5, color: "red"}

puts arf.has_value?(5)

puts arf.has_value?("red")