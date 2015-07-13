require 'csv'

class Database

  def find(request)
    CSV.foreach("contacts.csv") do |line|
      if line[1] == request
        puts line
      end
    end
  end

  def show(request)
    CSV.foreach("contacts.csv") do |line|
      if line[0] == id
        puts line
      end
    end
  end

  def display_all
    CSV.foreach("contacts.csv") do |line|
      puts line
    end
  end
end
