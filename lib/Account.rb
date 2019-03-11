class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    "You have succesfully deposited £#{amount}. Your balance is now £#{@balance}."
  end

  def withdraw(amount)
    if @balance < amount
      raise 'Insufficient funds.'
    else
      @balance -= amount
      "You have succesfully withdrawn £#{amount}. Your balance is now £#{@balance}."
    end
  end
end
