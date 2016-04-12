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
puts "#{actual_age}"

