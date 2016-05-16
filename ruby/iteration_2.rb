#release 0

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