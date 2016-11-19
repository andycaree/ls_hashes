def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}."
  else
    puts "Hi, my name is #{name} and I am #{options[:age]} years old and I live in #{options[:city]}."   
  end 
end
  
greeting("Andy")
greeting("Andy", options = { age: 43, city: "Charleston, SC" })