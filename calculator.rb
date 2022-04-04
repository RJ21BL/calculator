require './calculation'

class User
  def initialize(calculation)
    @calculation = calculation
  end

  puts 'Hello, welcome to the best calculator in the world!'
  puts 'Enter your name..'
  name = gets.chomp
  puts "Hey #{name}!, It's nice to meet you!"
  puts "For addition type '+', subtractation type '-', multiply type '*', or to divide a number '/'.."

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
    end
  end
end

calculation = Calculation.new
user = User.new(calculation)
user.number_convert
