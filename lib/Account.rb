class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    "You have succesfully deposited £#{amount}. Your balance is now £#{@balance}."
  end
end
