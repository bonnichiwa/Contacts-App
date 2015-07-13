require_relative 'contact_database'

class Contact

  attr_accessor :id, :last_name, :first_name, :email

  def initialize(id, last_name, first_name, email)
    @id = CSV.open('contacts.csv').readlines.size + 1
    @last_name = last_name
    @first_name = first_name
    @email = email
  end
    
    class << self

      def create(id, last_name, first_name, email)
        contacts_arr = [id, last_name, first_name, email]
        CSV.open('contacts.csv', 'a') do |csv|
        csv << contacts_arr
      end

      def find(request)
        find_with_name = Database.new
        find_with_name_.find(request)
      end

      def all
        list = Database.new
        list.display_all
        
      end

      def show(id_request)
        show_with_id = Database.new
        show_with_id.show(request)
      end
    end
  end

end
