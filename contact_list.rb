require_relative 'contact'

if ARGV[0] == 'help'
  puts 'What command would you like to execute?'
  puts 'new - Create a new contact'
  puts 'list - list all contacts'
  puts 'show - Show a contact'
  puts 'find - Find a contact'
end


@request = ARGV[1]

case 
  when ARGV[0] == 'new'
    
    puts 'Please enter their full name: "Last name", "First name", then "email address."'
    puts 'Enter last name:'
    @id = CSV.open('contacts.csv').readlines.size + 1
    @last_name = STDIN.gets.chomp.to_s
    puts 'Enter first name:'
    @first_name = STDIN.gets.chomp.to_s
    puts 'Enter email address:' 
    @email = STDIN.gets.chomp.to_s

    Contact.create(@id, @last_name, @first_name, @email)

  when ARGV[0] == 'find'
    Contact.find(@request)

  when ARGV[0] == 'list'
    Contact.all

  when ARGV[0] == 'show'        
    Contact.show(@request)
end


