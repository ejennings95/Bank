require_relative './DateOfTransaction.rb'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def new_transaction(date = DateOfTransaction.new.format, deposited, withdrawn, balance)
    save_transaction = []
    save_transaction << "#{date}, #{deposited}, #{withdrawn}, #{balance}"
    @transactions << save_transaction
  end

  def print
    "#{@transactions[0][0].gsub(', ', ' || ')}."
  end
end
