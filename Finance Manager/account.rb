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

def create_account(name, ac_number, ac_creation_date, balance)
  data = {"name" => name, "ac_number" => ac_number, "ac_creation_date" => ac_creation_date, "balance" => balance}
  File.open("path/to/output.yml", "w") {|f| f.write(data.to_yaml) }
end


end
