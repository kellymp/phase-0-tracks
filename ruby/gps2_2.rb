# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # define the grocery list string 
 # take the string and split it into each item using .split(' ')
 # set each food item as the keys in a hash
 # set default quantity for each item 
 # print the list to the console [can you use one of your other methods here?]
# output: hash

def grocery_items(items)
    grocery_items = items.split(' ')
    grocery_list = { }
    # set each item's quantity to one and adding it to the grocery list hash
    grocery_items.each do |item|
        grocery_list[item] = 1
    end
    p grocery_list
end

list = grocery_items("carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity
# steps: set a new key with its value to the hash
# output: print the grocery list hash with the new item

def add_item(list, item)
        list[item] = 1
        p list
end

add_item(list, "bananas")

# Method to remove an item from the list
# input: key the user wants to remove
# steps: list.delete(item)
# output: updated hash withuot the deleted item 

def remove_item(list, item)
	list.delete(item)
	p list
end

remove_item(list, "pizza")

# Method to update the quantity of an item
# input: item name and new quantity to override
# steps: call key within the hash and set it to new quantity value
# output: new list with a new quantity next to an item 

def update_quantity(list, item, quantity)
	list[item] = quantity
	p list
end

update_quantity(list, "bananas", 8)

# Method to print a list and make it look pretty
# input: call each on the hash 
# steps: have method print statement of key and value for each hash item
# output: pretty list of items that state their quantity 

def print_list(list)
	list.each do |item, quantity|
		puts "You need to buy #{quantity} #{item}. "
	end
end

print_list(list)