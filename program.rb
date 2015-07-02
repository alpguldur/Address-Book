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
    puts "The contact has been updated."
  end 

  def delete
    puts "Are you sure to delete this contact?"
    input = gets.chomp
    if input == "Yes"
      contacts.delete(contact)
      puts "The contact has been deleted."
    end  
  end  
    
  def search
    puts "First Name"
    first_name = gets.chomp
    contacts.include? 'first_name'
    @contacts.each do |contact|
      puts contact[:first_name]
    end  
    puts "Last Name"
    last_name = gets.chomp
    contacts.include? 'last_name'
    @contacts.each do |contact|
      puts contact[:first_name] + " " + contact[:last_name] 
    end  
  end    
end

address_book = AddressBook.new


while true
  puts "Select an action: list | search | create | edit <ID> | delete <ID>"
 
  input = gets.chomp  
  if input == "create"
    address_book.create
  elsif input == "list"
    address_book.list
  elsif input == "edit"
    address_book.edit
  elsif input == "delete"
    address_book.delete  
  elsif input == "search"
    address_book.search  
  end
end  