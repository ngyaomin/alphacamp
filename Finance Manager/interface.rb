load 'account.rb'

class Interface
  attr_accessor :account

  def initialize
    puts "Key in your account number: "
    account_number = gets.chomp
    @account = Account.load_account(account_number)
    show_menu
  end

  def show_menu
    puts "Key in 1 to withdraw
    \n 2 to deposit
    \n 3 to check balance
    \n 4 to create account
    \n and q to quit."
    input = gets.chomp
    if input == '1'
      # you would need to select account
      puts "How much would you like to withdraw?"
      amount = gets.chomp.to_i
      @account.withdraw(amount)
      @account.save
    elsif input == '2'
      # before you deposit you need to select account
      puts "How much would you like to deposit?"
      amount = gets.chomp.to_i
      @account.deposit(amount)
      @account.save
    elsif input == '3'
      # you need to select account
      @account.show_balance
    elsif input == '4'
      #create account
      puts "please enter your name"
      name = gets.chomp
      puts "enter an account number"
      ac_number = gets.chomp
      ac_creation_date = Time.now.strftime("%d/%m/%Y")
      puts "enter opening balance"
      balance = gets.chomp.to_i
      @account = Account.new(name, ac_number, ac_creation_date, balance)
      @account.save

      puts "You have succesfully created an account."


    elsif input == 'q'
      "Thank you for using our system"
    else
      puts "You have entered an invalid choice, please try again"
    end
  end
end
