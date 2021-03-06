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

#release 3


list2 = grocery_items("Lemonade tomatoes onions icecream")
update_quantity(list2, "Lemonade", 2) 
update_quantity(list2, "tomatoes", 3)
update_quantity(list2, "icecream", 4)
remove_item(list2, "Lemonade")
update_quantity(list2, "icecream", 1)
print_list(list2)

#I learned that it is important to pseudocode your entire program before begining to write any of the code portion. This way you can have a clear understanding of what you want your program to do and how youre going to do it. It is also super helpful to make your pseudocode as detailed as possible so that it is easier when it comes to actually writing your code
#When we split the string into individual items it created an array which made it easier to pass the items into the hash we created to store the grocery items and their quantities. We chose to go with a hash to store the grocery list because it allows us to enter both a key(the item) and a value associated with that key(the quantity of the item)
#in this challenge we passed the hash itself into a method as an argument by creating the variable "list" and setting it equal to our hash of specific grocery items and this is how we were able to pass information between items. Before doing so, our hash with the grocery items/quantities stored inside were not accessible to the other methods.
# this challenge definitely cleared up a lot of the issues i had with hashes and arrays. There were several concepts I was familiar with but did not feel entirely comfortable with or that I full grasped. I feel much more confident with this now. 
