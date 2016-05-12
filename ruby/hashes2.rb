#create an empty array to store client data
client = {}
#prompt user for the following data: 
puts "Michelle Kelly Interiors Client information"
puts "-------------------------------------------"
puts "Enter the following client information:"
#name (string)
puts "Client Name:"
client[:name] = gets.chomp
# or client = {:name => gets.chomp}
#address (string)
puts "Project Address:"
client[:address] = gets.chomp
#number of rooms (integer)
puts "Number of Rooms to Design:"
client[:rooms] = gets.chomp
#aesthetic (string)
puts "Client's Design aesthetic"
client[:aesthetic] = gets.chomp
#palette (boolean: true or false for neutral palette)
puts "Client Wants Neutral Palette (true/false)"
client[:palette] = gets.chomp
#project length (integer)
puts "Estimated Project Length (in months)"
client[:length] = gets.chomp

#convert user input to appropriate data type using .to_i .to_s 

#print the hash with user data 

#use if statement to give user the opportunity to update any key/value pairs

#print the updated hash and exit program

