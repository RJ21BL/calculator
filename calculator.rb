require './calculation'

class User
  def initialize(calculation)
    @calculation = calculation
  end

  puts 'Welcome to the best calculator in the world!'
  puts "To add type '+', subtract '-', times '*', or divide a number '/', enter the method you wish to use.."

  def number_convert
    @user_input = gets.chomp
    
    case @user_input
    when '+'
    puts 'Enter the first number to add..'
    first_num = gets.chomp.to_i
    puts 'Enter the second number to add to..'
    second_num = gets.chomp.to_i
    @calculation.add(first_num, second_num)
    when '-'
    puts 'Enter the first number to subtract from..'
    first_num = gets.chomp.to_i
    puts 'Enter the second number to subtract..'
    second_num = gets.chomp.to_i
    @calculation.subtract(first_num, second_num)
    when '*'
    puts 'Enter the first number to multiply..'
    first_num = gets.chomp.to_i
    puts 'Enter the second number to multiply by..'
    second_num = gets.chomp.to_i
    @calculation.times(first_num, second_num)
    when '/'
    puts 'Enter the first number to divide..'
    first_num = gets.chomp.to_i
    puts 'Enter the second number to divide by..'
    second_num = gets.chomp.to_i
    @calculation.divide(first_num, second_num)
    else
    puts 'You can only enter \'add\', \'subtract\', \'times\' or \'divide\''
      # tracker
    end
  end
end

calculation = Calculation.new
user = User.new(calculation)
user.number_convert