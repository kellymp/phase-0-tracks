
puts "How many employees will be processeed?"
number_to_process= gets.chomp.to_i

until number_to_process ==0
	puts "What is your name?"
	employee_name= gets.chomp
	puts "How old are you?"
	employee_age= gets.chomp.to_i
	puts "What year were you born?"
	birth_year= gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	wants_garlic_bread= gets.chomp
	puts "Would you like to enroll in the company's health insurance? (y/n)"
	wants_insurance= gets.chomp

	current_year= 2016
	actual_age= current_year - birth_year

	if actual_age == employee_age && wants_garlic_bread == "y"
		puts "Probably not a vampire"
	elsif actual_age != employee_age && (wants_garlic_bread == "n" || wants_insurance == "n")
		puts "Probably a vampire"
	elsif actual_age != employee_age && (wants_garlic_bread == "n" && wants_insurance == "n")
		puts "Almost certainly a vampire"
	elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
		puts "Definitely a vampire"
	else
		puts "Results inconclusive"	
	end
	number_to_process -=1
end


