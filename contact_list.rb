require_relative 'contact'
require_relative 'contact_database'
 
# TODO: Implement command line interaction
# This should be the only file where you use puts and gets
#cmd, id = ARGV # gets.chomp

ARGV
ARGV[0] 
ARGV[1] 


if ARGV[0] == 'help'
  puts 'What command would you like to execute?'
  puts 'new - Create a new contact'
  puts 'list - list all contacts'
  puts 'show - Show a contact'
  puts 'find - Find a contact'
end

  # when "create"

  # when "show"

  # when "find"


# if 'new' 
#   name, email = ARGV
# end

# STDIN.gets.chomp



# if 'show'
#   Contact.find(id)