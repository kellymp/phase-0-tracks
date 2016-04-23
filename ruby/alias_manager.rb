#Release 0
#create a method to:
#split first name and last name into two different strings
#name.split(' ')
#swap first name and last name using reverse!
#split the characters in first name and last name
#create edge cases for a & u, b & z
#change vowels to next in line using .next
#change consonants to next in line using .next
#join the letters back together to complete fake_name


#Release 1 Interface
#Ask for user's real name
puts "What is your name?"
#return fake name

#create loop for interface until user enters "quit"
until gets.chomp == "quit"
	puts "what is your name?"
end


#Release 2 Store aliases
#use array to store fake names enetered into interface
spy_alias_database = {} #hash to store real name and alias together
p spy_alias_database
#print all data entered when user quits program
