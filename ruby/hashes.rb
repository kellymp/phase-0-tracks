#create an empty hash for client data
client = {}
#prompt user for data and add all client data to the hash
puts "Enter the following client information:"
puts "Client name:"
client = {:name => gets.chomp}
puts "Client age:"
client [:age] = gets.chomp.to_i
puts "Project address:"
client [:address] = gets.chomp
puts "Number of rooms in home:"
client [:rooms] = gets.chomp.to_i
puts "Decor theme:"
client [:decor] = gets.chomp
puts "Does client want a neutral palette?: (y/n)"
if gets.chomp == "y"
	client [:neutral_palette] = true
else gets.chomp == "n"
	client [:neutral_palette] = false
end
puts "Estimated project length (in months):"
client [:months_until_complete] = gets.chomp.to_i
#print hash at bottom when all data in entered 
p client
#allow user to update any data, if user enters "none" skip to end
puts "Please specify one of the following categories you would like to edit:"
puts "Name" 
puts "Age"
puts "Address" 
puts "Rooms" 
puts "Decor"
puts "Palette"
puts "Project length"
puts "If all information is correct, enter 'none'."
	if gets.chomp == "name"
		puts "Client name:"
		client = {:name => gets.chomp}
	elsif gets.chomp == "age"
		puts "Client age:"
		client [:age] = gets.chomp.to_i
	elsif gets.chomp == "address"
		puts "Project address:"
		client [:address] = gets.chomp
	elsif gets.chomp == "rooms"
		puts "Number of rooms in home:"
		client [:rooms] = gets.chomp.to_i
	elsif gets.chomp == "decor"
		puts "Decor theme:"
		client [:decor] = gets.chomp	
#	elsif gets.chomp == "palette"
#		puts "Does client want a neutral palette?: (y/n)"
#			if gets.chomp == "y"
#			client [:neutral_palette] = true
#			else gets.chomp == "n"
#			client [:neutral_palette] = false
#			end
#	elsif gets.chpmp == "project length"
#		puts "Estimated project length (in months):"
#		client [:months_until_complete] = gets.chomp.to_i
	else gets.chomp == "none"
		puts "No changes made."
	end
#print most up-to-date hash 
p client
#exit program 

