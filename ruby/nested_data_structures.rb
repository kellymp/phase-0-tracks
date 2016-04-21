clothing_store = {
    womens_section: {
        location: 'Front of Store',
        product_info: {
            shirts_quantity: 20,
            pants_quantity: 15,
            accessories_quantity: 12
        },
        associate_name: [
            "Katie", 
            "Susan"
        ]
    },
    mens_section: {
        location: 'Middle of Store',
        product_info: {
            shirts_quantity: 10,
            seats_available: 7,
            accessories_quantity: 2
        },
        associate_name: [
            "Brian", 
            "Liz"
        ]
    },
    childrens_section: {
        location: 'Back of Store',
        product_info: {
            shirts_quantity: 5,
            pants_quantity: 5,
            accessories_quantity: 4
        },
        associate_name: [
        	"Marley"
        	]
    }
}

p clothing_store[:childrens_section][:associate_name]
clothing_store[:mens_section][:associate_name].push("Kevin")
p clothing_store[:mens_section][:associate_name]
p clothing_store[:womens_section][:location]
p clothing_store[:childrens_section][:location].upcase