contacts = []

while true
	puts "Select an action: list | search | create | edit <ID> | delete <ID>"
 
    input = gets.chomp  

    def create
    puts "Please fill out the contact attributes."
	puts "First Name:"
	first_name = gets.chomp
	puts "Last Name:"
	last_name = gets.chomp
	puts "Phone Number:"
	phone_number = gets.chomp
	puts "Email:"
	email = gets.chomp
	contact = {
		first_name: first_name,
		last_name: last_name,
		phone_number: phone_number,
		email: email
	}	
	contacts << contact
	puts "The contact has been created."

    def list
    if there is contact
        puts first_name last_name, phone_number, email
    else
        puts "The list is empty"

    def delete
    puts "Are you sure to delete this contact?"	
    if Yes = gets.chomp
        puts "The contact has been deleted."
    else
    	puts "The contact has not been deleted"

    def edit
    if 	there is contact
        puts "Please fill out the contact attributes."	
        puts "First Name:"
	    first_name = gets.chomp
	    puts "Last Name:"
	    last_name = gets.chomp
	    puts "Phone Number:"
	    phone_number = gets.chomp
	    puts "Email:"
	    email = gets.chomp
	    contact = {
		    first_name: first_name,
		    last_name: last_name,
		    phone_number: phone_number,
		    email: email
	    }	
	    contacts << contact
	    puts "The contact has been updated."
    else
    	puts "Contact not found"


    









