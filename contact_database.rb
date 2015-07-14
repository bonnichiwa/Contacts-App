require 'csv'

class Database

  def find(request)
    find = []
    CSV.foreach("contacts.csv") do |line|
      if line[1] == request
        puts line.inspect.to_s
      end
    end
  end

  def show(request)
    CSV.foreach("contacts.csv") do |line|
      if line[0] == request
        puts line.inspect.to_s
      end
    end
  end

  def display_all
    CSV.foreach("contacts.csv") do |line|
      puts line.inspect.to_s
    end
  end
end
