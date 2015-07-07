require_relative 'contact_database'
 
# TODO: Implement command line interaction
# This should be the only file where you use puts and gets
#cmd, id = ARGV # gets.chomp


if ARGV[0] == 'help'
  puts 'What command would you like to execute?'
  puts 'new - Create a new contact'
  puts 'list - list all contacts'
  puts 'show - Show a contact'
  puts 'find - Find a contact'


elsif ARGV[0] == 'new'
  found = false
  puts 'Please enter their full name: "Last name", "First name", then "email address."'
  puts 'Enter last name:'
  @id = File.open('contacts.csv').readlines.size + 1
  @last_name = STDIN.gets.chomp.to_s
  puts 'Enter first name:'
  @first_name = STDIN.gets.chomp.to_s
  puts 'Enter email address:'
  @email = STDIN.gets.chomp.to_s
  File.open("contacts.csv").each_line do |line| 
    if line.match("#{@email}")
      found = true
      break
    else
      found = false
    end
  end
  if found 
    puts "Already exists! Sorry!"
  else
    CSV.open("./contacts.csv", "a") do |csv|
    csv << [@id, @last_name, @first_name, @email]
  end
end
    
elsif ARGV[0] == 'list'
  File.open("contacts.csv").each_line do |line|
    line.gsub!(/(\d).(\w+).(\w+).(\w+\W\w+.\w+)/) {|group| "#{$1}: #{$2} #{$3} (#{$4})"}
    puts line
  end

elsif ARGV[0] == 'show'
  @id_request = ARGV[1]
  output = "not found"
  File.open("contacts.csv").each_line do |line| 
    if line[0,1] == @id_request
      output = line.split(',')
      break
    end
  end
  puts output

elsif ARGV[0] == 'find'
  @find_request = ARGV[1]
  output = "doesn't exist"
  File.open("contacts.csv").each_line do |line|
    if line[0..-1].match("#{@find_request}") 
      output = line
    end
  end
  puts output
end
