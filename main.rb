require_relative 'app'
require_relative 'methods/input'
class Main
  def initialize
    @app = App.new
    @input = Input.new
  end

  def start
    puts 'Welcome to our School Library!'
    loop do
      menu
      option = @input.read
      break if option == '7'

      @app.get_num(option)
    end
    puts 'Thank you for using our Library!'
  end

  def menu
    puts
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end
end
Main.new.start
