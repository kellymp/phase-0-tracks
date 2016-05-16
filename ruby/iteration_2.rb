#release 0. write a method that takes a block

def train_tracker
	status_1 = "delayed"
	status_2 = "on time"
	puts "The next train is approaching"
	yield(status_1, status_2)
	puts "Enjoy your ride!"
end

train_tracker do |status_1, status_2|
	puts "The train is no longer #{status_1}. It is now running #{status_2}!"
end

#release 1 

#declare an array and a hash that have data
sports = ["football", "soccer", "tennis", "volleyball"]
captains = {
	"Mark" => "football", 
	"John" => "soccer",
	"Brooke" => "tennis",
	"Samantha" => "volleyball"}

#iterate through the array using .each to capitalize each word
capitalized_sports = []

sports.each do |sport|
	capitalized_sports << sport.capitalize
end

#print array before and after
puts "Array before using .each:"
p sports
puts "Array after using .each:"
p capitalized_sports


puts "Hash before using .each:"
p captains

#iterate through the array using .each to list who the captain is of each sport
puts "Hash after using .each:"
captains.each do |athlete, sport|
	puts "#{athlete} is the captain of the #{sport} team!"
end

#iterate through the array using .map! to make all letters uppercase
puts "Array before using .map!:"
p sports

sports.map! do |sport|
	sport.upcase
end

puts "Array after using .map!:"
p sports