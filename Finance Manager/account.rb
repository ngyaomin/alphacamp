class Account
  attr_accessor :balance
  attr_reader :name, :ac_number, :ac_creation_date

  def initialize(name, ac_number, ac_creation_date, balance)
    @name = name
    @ac_number = ac_number
    @ac_creation_date = ac_creation_date
    @balance = balance
  end



end
