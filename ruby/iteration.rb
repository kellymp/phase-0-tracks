#release 0
def weather_update
	condition1 = "rainy"
	condition2 = "foggy"
	puts "The weather update:"
	yield(condition1, condition2)
	puts "Thanks for watching!"
end
weather_update { |condition1, condition2| puts "Today is #{condition1} and #{condition2}!"}

#release 1
dog_breeds = ["golden retriever", "pug", "chocolate lab"]
plural_breeds = []
pets = {"dogs" => "playful", "cats" => "mischievous", "birds" => "loud"}

puts "Original Data:"
p dog_breeds
p plural_breeds

#iterate through the array with .each to make the breeds plural
dog_breeds.each do |breed|
	plural_breeds << "#{breed}s"
end

puts "After .each call:"
p dog_breeds
p plural_breeds

puts "Original Data:"
p pets

#iterate through the hash with .each to make sentences about pets
pets.each do |pet, characteristic|
puts "#{pet} are #{characteristic}!"
end

puts "After .each call:"
p pets

puts "Original Data:"
p dog_breeds

#iterate through the hash with .map! to make the breeds uppercase
dog_breeds.map! do |breed|
	breed.upcase
end

puts "After .map! call:"
p dog_breeds


#Release 2

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
test_scores = {"john" => 45, "mary" => 75, "chris" => 90, "sam" => 30, "jim" => 20}

# 1. delete any even numbers from the array
arr.delete_if {|num| num % 2 == 0}
p arr
# detes all people who scored less than a 50
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