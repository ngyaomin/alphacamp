load 'account.rb'
class interface

def initialize
  show_menu
  @account = create_account

def show_menu
puts "to withdraw type 1, to deposit type 2, to see balance type 3, to quit type q"
input = gets.chomp

if input == 1
  withdraw
elsif input == 2
  deposit
elsif input == 3
  show_balance
elsif input == 'q'
end

  def withdraw
    amount = gets.chomp
    if amount <= balance
      balance -= amount
    else
      "You do not have sufficent balance."
    end
  end

  def deposit
    amount = gets.chomp
    balance += amount
  end

  def show_balance
    puts balance
  end
end
