load 'account.rb'
class Interface

  def initialize
    show_menu
  end

  def show_menu
    puts "to withdraw type 1, to deposit type 2, to see balance type 3, to create account type 4 to quit type q"
    input = gets.chomp

    if input == '1'

      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      Account.withdraw(amount)

    elsif input == '2'

      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      deposit(amount)

    elsif input == '3'
      show_balance
    elsif input == '4'

      puts "please enter your name"
      name = gets.chomp
      puts "enter an account number"
      ac_number = gets.chomp
      ac_creation_date = Time.now.strftime("%d/%m/%Y")
      puts "enter opening balance"
      balance = gets.chomp.to_i
      puts "You have succesfully created an account."

    elsif input == 'q'
      "Thank you for using our system"
    else
      puts "You have entered an invalid choice, please try again"
    end
  end
end
