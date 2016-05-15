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

