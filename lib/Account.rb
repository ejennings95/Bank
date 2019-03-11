class Account

  attr_reader :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
    @statement.new_transaction(amount, 0, @balance)
    "You have succesfully deposited £#{amount}. Your balance is now £#{@balance}."
  end

  def withdraw(amount)
    if @balance < amount
      raise 'Insufficient funds.'
    else
      @balance -= amount
      @statement.new_transaction(0, amount, @balance)  
      "You have succesfully withdrawn £#{amount}. Your balance is now £#{@balance}."
    end
  end
end
