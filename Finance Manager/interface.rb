load 'account.rb'

class Interface
  attr_accessor :account

  def initialize
    puts "Key in your account number to log in, or enter 0 to create a new account."
    account_number = gets.chomp
    if account_number == "0"
      puts "Please enter your name"
      name = gets.chomp

      puts "Enter an account number"
      ac_number = gets.chomp

      ac_creation_date = Time.now.strftime("%d/%m/%Y")
      puts "Enter opening balance"
      balance = gets.chomp.to_i

      @account = Account.new(name, ac_number, ac_creation_date, balance)
      @account.save

      puts "You have succesfully created an account."
    else
      @account = Account.load_account(account_number)
      show_menu
    end
  end

  def show_menu
    puts "***** 1 to withdraw
    \n***** 2 to deposit
    \n***** 3 to check balance
    \n***** 4 to create account
    \n***** q to quit."
    input = gets.chomp
    if input == '1'
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      @account.withdraw(amount)
      @account.save
    elsif input == '2'
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      @account.deposit(amount)
      @account.save
    elsif input == '3'
      # you need to select account
      @account.show_balance
    elsif input == '4'
      #create account
      puts "Please enter your name:"
      name = gets.chomp

      puts "Enter an account number:"
      ac_number = gets.chomp

      ac_creation_date = Time.now.strftime("%d/%m/%Y")
      puts "Enter opening balance:"
      balance = gets.chomp.to_i

      @account = Account.new(name, ac_number, ac_creation_date, balance)
      @account.save

      puts "You have succesfully created an account on #{Time.now.strftime("%d/%m/%Y")}"
    elsif input == 'q'
      "Thank you for using our system."
    else
      puts "You have entered an invalid choice, please try again."
    end
  end
end
