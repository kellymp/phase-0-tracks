#create an empty hash for client data
client = {}
#prompt user for data and add all client data to the hash
puts "Enter the following client information:"
puts "Client name:"
client = {:name => gets.chomp}
puts "Client age:"
client [:age] = gets.chomp.to_i
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
#print hash at bottom when all data in entered 
p client
#allow user to update any data, if user enters "none" skip to end
#print most up-to-date hash 
#exit program 

