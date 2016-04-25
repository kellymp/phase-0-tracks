#write method to swap first and last name
def real_to_alias(real_name)
	real_name = real_name.split(' ')
	real_name = real_name.reverse!
	real_name = real_name.join(' ')
end

#write method to advance vowel to next in alphabet and create edge cases for a & u
def vowel_next(i)
	vowels = "aAeEiIoOuU"
	if i == "u"
		i = "a"
	elsif i == "U"
		i = "A"
	else 
		i = vowels[vowels.index(i) +2]
	end
end

#write method to advance consonants to next in alphabet and create edge cases for b & z
def consonant_next(i)
	consonants = "bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ"
	if i == "z"
		i = "b"
	elsif i == "Z"
		i == "B"
	else
		i = consonants[consonants.index(i) +2]
	end
end

#Ask for user's real name
puts "Hello, Agent. Please enter your name. Enter 'quit' to exit."
real_name = gets.chomp

#create loop for interface until user enters "quit"
#fix loop
#until gets.chomp == "quit"
#	puts "Please enter your name. Enter 'quit' to exit."
#end

#split first name and last name into two different strings
split_name = real_name.split(' ')

#swap first name and last name 
name_swap = split_name.reverse

p real_name
p split_name
p name_swap

#join swapped name together with space in between
reverse_name = name_swap.join(' ')
p reverse_name

#split reversed name into individual characters
reverse_characters = reverse_name.split('')
p reverse_characters

#set alias name equal to reversed name split into characters
agent_alias = reverse_characters

agent_alias

#change vowels and consonants


#return fake name

#Release 2 Store aliases
#use array to store fake names enetered into interface
#spy_alias_database = {} #hash to store real name and alias together
#p spy_alias_database
#print all data entered when user quits program
