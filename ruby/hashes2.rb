#create an empty array to store client data
client = {}
#prompt user for the following data: 
puts "Michelle Kelly Interiors Client information"
puts "-------------------------------------------"
puts "Enter the following client information:"

#name (string)
puts "Client Name:"
client[:name] = gets.chomp.to_s
# or client = {:name => gets.chomp}

#address (string)
puts "Project Address:"
client[:address] = gets.chomp.to_s

#number of rooms (integer)
puts "Number of Rooms to Design:"
client[:rooms] = gets.chomp.to_i

#aesthetic (string)
puts "Client's Design aesthetic:"
client[:aesthetic] = gets.chomp.to_s

#neutral_palette (boolean: true or false for neutral palette)
puts "Client Wants Neutral Palette?: (yes/no)"
preference = gets.chomp
	#Use if statement to set neutral_palette to true or false
	if preference == "yes"
		client[:neutral_palette] = true
	else neutral == "no"
		client[:neutral_palette] = false
	end

#project length (integer)
puts "Estimated Project Length (in months):"
client[:length] = gets.chomp.to_i
#convert user input to appropriate data type using .to_i .to_s 

#print the hash with user data 

#use if statement to give user the opportunity to update any key/value pairs

#print the updated hash and exit program

