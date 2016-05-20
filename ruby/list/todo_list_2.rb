class TodoList
	def initialize(array)
		@array = array
	end

	def get_items
		p @array
	end

	def add_item(item)
		@array << item
	end

	def delete_item(item)
		@array.delete(item)
	end

	def get_item(item)
		@array[item]
	end
end

