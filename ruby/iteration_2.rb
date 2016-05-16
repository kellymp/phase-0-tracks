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



#Release 2

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
test_scores = {"john" => 45, "mary" => 75, "chris" => 90, "sam" => 30, "jim" => 20}

# 1. delete any even numbers from the array
arr.delete_if {|num| num % 2 == 0}
p arr

# deletes all people who scored less than a 50
test_scores.delete_if {|name, grade| grade < 50}
p test_scores

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
test_scores = {"john" => 45, "mary" => 75, "chris" => 90, "sam" => 30, "jim" => 20}

#2 keep all even numbers
arr.keep_if {|num| num % 2 == 0}
p arr
#keep if test scores are higher or equal to 50
test_scores.keep_if {|name, grade| grade >= 50}

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
test_scores = {"john" => 45, "mary" => 75, "chris" => 90, "sam" => 30,  "jim" => 20}

#selects numbers greater than 6
arr. select!{|num| num > 6}
p arr

#selects names that start with j
test_scores.select!{|name, grade| name[0] == "j"}
p test_scores

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
test_scores = {"john" => 45, "mary" => 75, "chris" => 90, "sam" => 30,  "jim" => 20}

#removes items until it finds a number that is not less than 6, then stops
arr = arr.drop_while{|num| num < 6}
p arr

#removes items until it finds a grade greater than 80, then stops, which turns hash into an array
test_scores = test_scores.drop_while{|name,grade| grade < 80}

#switch test scores back to a hash
test_scores = test_scores.to_h
p test_scores