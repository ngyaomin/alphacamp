require_relative 'account.rb'
require 'yaml'
class Account
  attr_accessor :balance
  attr_reader :name, :ac_number, :ac_creation_date

  @@all_accounts = YAML.load(File.read('data.yml'))

  def initialize(name, ac_number, ac_creation_date, balance)
    @name = name
    @ac_number = ac_number
    @ac_creation_date = ac_creation_date
    @balance = balance
    @@all_accounts << self
    # self here would represent this particular account
    # << : add the right hand value into left hand colection/list
    # used in arrays, sets etc
  end

  def withdraw(amount)
    if amount <= @balance
       @balance -= amount
       puts "You have #{@balance} left in your account."
    else
      "You do not have sufficent balance."
    end
  end

  def deposit(amount)
    @balance += amount
  end

  def show_balance
    puts @balance
  end

  def save
    File.open("data.yml", "w"){
      |f|
      f.write(@@all_accounts.to_yaml)
    }  # self here means this specific account
  end

  # here self means to make this a class mathod.
  # @account = Account.load(12345)
  def self.load_account(account_number)
    # you can read from the yml and load the data properties into this account
    # YAML.load(content)a
    # return a account object

    # FIRST SOLUTION (POOR BECAUSE WE HAVE TO LOPP THROUGH)
    # selected_account = nil
    #
    # @@all_accounts.each { |account|
    #     selected_account = if account.ac_number == account_number
    #  }
    #  return selected_account

    # SECOND SOLUTION
    # SAME PROBLEM AS FIRST STILL LOOPING THROUGH
    # selected_account_index = @@all_accounts.index {|account|
    #   account.ac_number == account_number
    # }
    # @@all_accounts[selected_account_index]

    # THIRD SOLUTION
    # STops at finding the account
    index =  @@all_accounts.find_index {|element| element.ac_number == account_number}
    @@all_accounts[index]
  end
end
