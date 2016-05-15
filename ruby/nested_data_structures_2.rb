grocery_store = {
	produce: {
		location: 'front of store',

		inventory: {
			tomatoes: 20,
			lettuce_heads: 25,
		},

		needs_restocking: [
			'lemons',
			'ears of corn'
		]
	},

	dairy: {
		location: 'middle of store',

		inventory: {
			milk_cartons: 30,
			cream_cheese_tubs: 20,
		},

		needs_restocking: [
			'sour cream',
			'string cheese'
		]
	},

	meat: {
		location: 'back of store',
		inventory: {
			hamburger_patties: 10,
			steaks: 15,
		},

		needs_restocking: [
			'filet mignon',
			'beef tenderloin'
		]
	}
}


#driver code
p grocery_store[:meat][:location]
grocery_store[:dairy][:needs_restocking].push('coffee creamer')
p grocery_store[:dairy][:needs_restocking]
p grocery_store[:produce][:inventory]
p grocery_store[:produce][:location].upcase