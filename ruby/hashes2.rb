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
puts "Client's Design Aesthetic:"
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
client[:months_until_complete] = gets.chomp.to_i
#convert user input to appropriate data type using .to_i .to_s 

#print the hash with user data 
puts "-------------------------------"
puts "Client Information:"
print client
puts
puts "-------------------------------"

#use if statement to give user the opportunity to update any key/value pairs
puts "Enter any category you would like to edit."
puts "Categories: name, address, rooms, aesthetic, palette, project length"
puts "If all information is correct enter 'none'."
revision = gets.chomp
	if revision == "name"
			puts "Client Name:"
			client[:name] = gets.chomp
		elsif revision == "address"
			puts "Project Address:"
			client [:address] = gets.chomp
		elsif revision == "rooms"
			puts "Number of Rooms to Design:"
			client [:rooms] = gets.chomp.to_i
		elsif revision == "aesthetic"
			puts "Client's Design aesthetic:"
			client [:aesthetic] = gets.chomp	
		elsif revision == "palette"
			puts "Client Wants Neutral Palette?: (yes/no)"
			preference = gets.chomp
				if preference == "yes"
				client [:neutral_palette] = true
				else preference == "no"
				client [:neutral_palette] = false
				end
		elsif revision == "project length"
			puts "Estimated Project Length (in months):"
			client [:months_until_complete] = gets.chomp.to_i
		else revision == "none"
			puts "No changes made."
	end

#print the updated hash and exit program

