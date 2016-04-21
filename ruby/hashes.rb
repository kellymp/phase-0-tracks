#create an empty hash for client data
client = {}
#prompt user for data and add all client data to the hash
puts "Enter the following client information:"
puts "Client Name"
client = {:name => gets.chomp}
puts "Client Age"
client [:age] = gets.chomp
p client
#print hash at bottom when all data in entered 
#allow user to update any data, if user enters "none" skip to end
#print most up-to-date hash 
#exit program 

