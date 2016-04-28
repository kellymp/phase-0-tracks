class TodoList
	def initialize(item_1, item_2)
		@item_1 = item_1
		@item_2 = item_2
	end

	def get_items 
		list = []
		list<< @item_1 << @item_2
	end
end