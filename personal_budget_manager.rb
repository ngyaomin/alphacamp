class Account
  attr_accessor :balance
  attr_reader :name, :ac_number, :ac_creation_date

  def initialize(name, ac_number, ac_creation_date, balance)
    @name = name
    @ac_number = ac_number
    @ac_creation_date = ac_creation_date
    @balance = balance
  end

  def withdraw(amount)
    if amount <= balance
      balance -= amount
    else
      "You do not have sufficent balance."
    end
  end


  def deposit(amount)
    balance += amount
  end

end
