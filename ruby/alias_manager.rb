#write method to split, swap, and rejoin first and last name
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
		elsif i == " "
			i = " "
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
		elsif i == " "
			i = " "
		else
			i = consonants[consonants.index(i) +2]
		end
	end

#create hash to store spy name and alias
database = {}

#ask for user's real name
puts "Hello, Agent."
real_name = " "

#create loop for interface until user enters "quit"
until real_name == "quit"
puts "Please enter your name. Enter 'quit' to exit."
real_name = gets.chomp
#implement method to split, swap and rejoin first and last name
	alias_characters = real_to_alias(real_name)
#split first and last name into characters
	alias_characters = alias_characters.split('')
#implement method to change vowels and consonants to next respective letter
	alias_characters.map! do |i|
		  if ["a", "e", "i" ,"o", "u"].include? i
		    vowel_next(i)
		  else
		    consonant_next(i)
		  end 
	end
#rejoin characters to create alias first and last name
alias_name = alias_characters.join('')

if real_name != "quit"
	#use hash to store fake names enetered into interface
	database[real_name] = alias_name
	#return fake name
	puts "Your alias is #{alias_name}"
end
end
#print all data entered when user quits program
database.each do |real_name, alias_name|
	puts "#{real_name} is also known as #{alias_name}"
end