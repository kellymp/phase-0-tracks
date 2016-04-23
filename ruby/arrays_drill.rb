# Release 2.1 add a method that takes three items as parameters and returns an array of those items 

def build_array(first, second, third)
	return [first, second, third]
end

# Release 1

#initialize empty array in a variable and print it
release_one = Array.new
p release_one

#add 5 items to array and print array
release_one << "hello" << 9 << true << "goodbye" << "green"
p release_one

#delete item at index 2 and print array
release_one.delete_at(2)
p release_one

#insert new item at index 2 and print array
release_one.insert(2, "two")
p release_one

#remove first item of array without refering to its index. print array
release_one.shift 
p release_one

#ask array if it includes a cetain item and print results of tis method call
if release_one.include?("horse")
 puts "This array contains the word 'horse'."
else 
 puts "This array does not contain the word 'horse'."
end

#initialize another array that already contains a few items in it
new_array = ["word", 5, "cheese", true, nil]
p new_array 

#add two arays together and store them in a new variable. print the new array 
join_arrays = new_array + release_one
p join_arrays

#call method (that takes three items as parameters) to return an array
p build_array("word", 10, "bird")
p build_array(false, true, 5)
p build_array("girl", "boy", 234)

#call method (that takes an array and an item as parameters) to return an array
