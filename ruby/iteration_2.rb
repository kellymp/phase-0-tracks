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
	"Brooke" => "tennis"
	"Samantha" => "volleyball"
	}

