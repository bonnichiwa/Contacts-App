require_relative 'contact_database'

class Contact

  attr_accessor :id, :last_name, :first_name, :email

  def initialize
    # @id = CSV.open('contacts.csv').readlines.size + 1
    @last_name = last_name
    @first_name = first_name
    @email = email
  end
    
  def create(last_name, first_name, email)
    id = CSV.open('contacts.csv').readlines.size + 1
    contacts_arr = [id, last_name, first_name, email]
    CSV.open('contacts.csv', 'a') do |csv|
      csv << contacts_arr 
        end
      end
    end
  end

  def find(request)
    db = Database.new
    db.find(request)
  end

  def all
    list = Database.new
    list.display_all 
  end

  def show(request)
    db = Database.new
    db.show(request)
  end

end
