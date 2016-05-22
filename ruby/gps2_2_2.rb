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