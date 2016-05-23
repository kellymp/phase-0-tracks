# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash
  # groceery list hash
  # adding each seperate item to the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash containing all grocery items

def list_maker(list)
	grocerylist = {}
	default = 1
	items = list.split(" ")
	items.each do |item|
		grocerylist[item] = default
	end
	p grocerylist
	grocerylist
end



# Method to add an item to a list
# input: item name and optional quantity
# steps:
	# add new item as a key with either default quantity or inputted quantity
# output: hash with new item

def add_item(name,item, quantity = 1)
	name[item] = quantity
	p name
	name
end


# Method to remove an item from the list
# input: some item on the grocery list
# steps:
	#take out any element equal to the input at specific index
# output: hash without deleted item

def remove_item(name, item)
	name.delete(item)
	p name
	name
end



# Method to update the quantity of an item
# input: specific item with a new quantity, key with new value
# steps:
	#go to the key  and change it's value to inputted number
# output: hash with updated value

def update_quant(name, item, quantity)
	name[item] = quantity
	p name
	name
end


# Method to print a list and make it look pretty
# input: name of the hash
# steps:
	#print statment of hash
# output: print each key with its value

def print_list(name)
	name.each do |item, quantity|
		puts "You want to purchase #{quantity} of #{item}"
	end
end

@test = list_maker("")
add_item(@test, "Lemonade", 2)
add_item(@test, "Tomatoes", 3)
add_item(@test, "Onions", 1)
add_item(@test,"Ice Cream", 4)
remove_item(@test, "Lemonade")
update_quant(@test, "Ice Cream", 1)
print_list(@test)


#reflection

#I learned why pseudocoding is so important in this challenge. 
#It is important to write good and detailed pseudocode so that when
#it comes to writing the actual code for your program, you have a clear
#understanding of what you are trying to accomplish and when your pseudocode
#and it makes it much easier to actual write your code if you have detailed 
#and clear pseudocoding.

#for this challenge we used both an array and a hash. We decided a hash would be best 
#because it allows us to store a key (the food item) and a value (the quantity of the food item).
#when we entered a string of food items separated by spaces we chose the best option
#would be to split the string, which then creates an array of the food items. We were then
#able to set the array items as the keys of the hash and assign a defualt value of 1 to each.

#a method returns the last variable executed. We ran into a problem with this when having 
#our method print the hash at the end. We fixed this by removing the print and simply
#having the hash be the last variable of the method so that it would return this"

#methods can take many different things as arguments including, strings, booleans, integers,
#arrays, hashes or even other methods.

#in order to pass information between methods you can set information as variables that are
#accessable on a global level. We had to do this in this challenge by setting the results of
#our first method as a variable so that it could be accessed in our other methods.

#After this challenge i feel much more comfortable with hashes and arrays and being able to 
#use an array within a hash.




