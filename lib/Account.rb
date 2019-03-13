require_relative './statement.rb'

class Account
  attr_reader :balance

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
    @balance += amount.round(2)
    @statement.new_transaction(two_decimal_places(amount), 0, two_decimal_places(@balance))
  end

  def withdraw(amount)
    sufficient_funds?(amount)
    @balance -= amount.round(2)
    @statement.new_transaction(0, two_decimal_places(amount), two_decimal_places(@balance))
  end

  private

  def sufficient_funds?(amount)
    @balance > amount.round(2) ? true : (raise 'Insufficient funds.')
  end

  def two_decimal_places(amount)
    '%.2f' % amount
  end
end
