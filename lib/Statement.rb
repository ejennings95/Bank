require_relative './date_of_transaction.rb'
require_relative './printer.rb'

class Statement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def new_transaction(deposited, withdrawn, balance, date = DateOfTransaction.new.format)
    @transactions << "#{date} || #{deposited} || #{withdrawn} || #{balance}"
  end

  def print(printer = Printer.new)
    printer.print_header
    printer.print(@transactions)
  end
end
