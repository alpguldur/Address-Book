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
        puts index.to_s + ", " + contact[:first_name] + " " + 
             contact[:last_name] + ", " +
             contact[:phone_number] + ", " +
             contact[:email]
      end       
    else
      puts "The list is empty."               
    end  	
  end 

  def edit
    if @contacts[id].any?     
      puts "Please fill out the contact attributes."
      puts "First Name:"
      first_name = gets.chomp
      puts "Last Name:"
      last_name = gets.chomp
      puts "Phone Number:"
      phone_number = gets.chomp
      puts "Email:"
      email = gets.chomp
      new_contact = {
        first_name: first_name,
        last_name: last_name,
        phone_number: phone_number,
        email: email
        }  
      @contacts << new_contact
      @contacts.delete(contact)
      puts "The contact has been updated."
    else
      puts "Contact not found."  
    end  
  end 

  def delete
    if @contacts[id].any?
      puts "Are you sure to delete this contact?"
      input = gets.chomp
      if input == "Yes"
        @contacts.delete(contact)
        puts "The contact has been deleted."
      end
    else
      puts "Contact not found."
    end      
  end  
    
  def search
    if @contacts.any?
      puts "First Name"
      first_name = gets.chomp
      @contacts.include? 'first_name'
      @contacts.to_enum.with_index(1).each do |contact, index|
        puts index.to_s + ", " + contact[:first_name] + " " + 
             contact[:last_name] + ", " +
             contact[:phone_number] + ", " +
             contact[:email]
      end  
      puts "Last Name"
      last_name = gets.chomp
      @contacts.include? 'last_name'
      @contacts.to_enum.with_index(1).each do |contact, index|
        puts index.to_s + ", " + contact[:first_name] + " " + 
             contact[:last_name] + ", " +
             contact[:phone_number] + ", " +
             contact[:email] 
      end
    else
      puts "No results found."  
    end    
  end    
end

address_book = AddressBook.new


while true
  puts "Select an action: list | search | create | edit <ID> | delete <ID>"
 
  inputs = gets.chomp.split(' ')
  action = inputs.first
  id = inputs.last   
  if action == "create"
    address_book.create
  elsif action == "list"
    address_book.list
  elsif action == "edit"
    address_book.edit
  elsif action == "delete"
    address_book.delete  
  elsif action == "search"
    address_book.search  
  end
end  