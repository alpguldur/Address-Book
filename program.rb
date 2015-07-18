class AddressBook
  def initialize
  	@contacts = []
  end

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
    @contacts << contact
    puts "The contact has been created."
  end 

  def list
    if @contacts.any?
      @contacts.to_enum.with_index(1).each do |contact, index|
        print_contact(contact, index)
      end       
    else
      puts "The list is empty."               
    end  	
  end 

  def edit(index)
    if @contacts[index]   
      puts "Please fill out the contact attributes."
      puts "First Name:"
      first_name = gets.chomp
      puts "Last Name:"
      last_name = gets.chomp
      puts "Phone Number:"
      phone_number = gets.chomp
      puts "Email:"
      email = gets.chomp  
      @contacts[index] = {
        first_name: first_name,
        last_name: last_name,
        phone_number: phone_number,
        email: email
      } 
      puts "The contact has been updated."
    else
      puts "Contact not found."  
    end  
  end 

  def delete(index)
    if @contacts[index]
      puts "Are you sure to delete this contact?"
      input = gets.chomp
      if input == "Yes"
        @contacts.delete_at(index)
        puts "The contact has been deleted."
      end
    else
      puts "Contact not found."
    end      
  end  
    
  def search    
    puts "First Name"
    first_name = gets.chomp        
    puts "Last Name"
    last_name = gets.chomp
    contacts_to_print = []   
    @contacts.to_enum.with_index(1).each do |contact, index|
      next if !first_name.empty? && contact[:first_name] != first_name
      next if !last_name.empty? && contact[:last_name] != last_name
      contacts_to_print << [contact, index]        
    end 
    if contacts_to_print.empty?
      puts "No results found"
      return
    end 
    contacts_to_print.each do |contact, index|
      print_contact(contact, index) 
    end          
  end 

  def print_contact(contact, index) 
    puts index.to_s + ", " + 
         contact[:first_name] + " " + 
         contact[:last_name] + ", " +
         contact[:phone_number] + ", " +
         contact[:email] 
  end           
end

address_book = AddressBook.new


while true
  puts "Select an action: list | search | create | edit <ID> | delete <ID>"
 
  inputs = gets.chomp.split(' ')
  action = inputs.first
  index = Integer(inputs.last) - 1 if ['edit', 'delete'].include?(action) 
  if action == "create"
    address_book.create
  elsif action == "list"
    address_book.list
  elsif action == "edit"
    address_book.edit(index)
  elsif action == "delete"
    address_book.delete(index)  
  elsif action == "search"
    address_book.search      
  end
end  