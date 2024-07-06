# second.rb

# Prompt for and collect your first name, stored using the key :first_name in a person hash.
person = {}
print "Enter your first name: "
person[:first_name] = gets.chomp

#Prompt for and collect your last name, and store that in the hash.
print "Enter your last name: "
person[:last_name] = gets.chomp

# Prompt for and collect your age, storing that in the hash.
print "Enter your age: "
person[:age] = gets.chomp.to_i

# Prompt for and collect your street address, and store that in the hash.
print "Enter your street address: "
person[:street_address] = gets.chomp

# Prompt for and collect your city, and store that in the hash.
print "Enter your city: "
person[:city] = gets.chomp

# Prompt for and collect your state, and store that in the hash.
print "Enter your state: "
person[:state] = gets.chomp

# Put the value of the hash to the console, using puts.
puts "Person: #{person}"

# Put the keys for the hash to the console, also using puts. Hint: The Hash class has a method you can call.  Note that you get an array back.
puts "Keys: #{person.keys}"

# Put the values for the hash to the console, also using puts.
puts "Values: #{person.values}"

#Change the first name, last name, and city as stored in the hash, so that each of these is capitalized.  Hint: You can use the capitalize method of the string class.  So you would have:

person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize    
puts "Capitalized Person's first name, last name, and city: #{person}"

# Change the state as stored in the person hash to upper case.  
person[:state] = person[:state].upcase
puts "Uppercase Person's state: #{person}"