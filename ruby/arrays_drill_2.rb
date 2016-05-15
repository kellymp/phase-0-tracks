#initialize an empty array and store it in a variable
array_one = Array.new
# or array_one = {}
p array_one

#add 5 items to the array and print it
array_one << "Michelle" << 6 << false << "blue" << "dog"
p array_one

#delete item at index 2 and print the array
array_one.delete_at(2)
p array_one

#insert a new item at index 2 and print the array
array_one.insert(2, true)
p array_one

#remove the first item of the array without having to refer to its index
array_one.shift
p array_one

#ask the array if it includes a certain item and print results of this call method
if array_one.include?('cheeseburger')
	puts "This array includes the word 'cheeseburger'!"
else
	puts "This array does not include the word 'cheeseburger'!"
end


