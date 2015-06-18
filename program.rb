addressbook = [ john, linda ]

john = {
	"first name" => "John", 
	"last name" => "Smith",
	"phone number" => "000-000-0000",
	"email" => "fake@email.com"
}

linda = {
	"first name" => "Linda",
	"last name" => "Vasquez",
	"phone number" => "111-111-111",
	"email" => "fake2@email.com"
}

addressbook.each do |person|
  
    first = person["first name"]
    last  = person["last name"]
    phone = person["phone number"]
    email = person["email"]

    puts first + " " + last + ", " + phone + ", " + email
      
end