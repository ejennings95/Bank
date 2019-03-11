require_relative './DateOfTransaction.rb'
require_relative './Printer.rb'

class Statement

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def new_transaction(date = DateOfTransaction.new.format, deposited, withdrawn, balance)
    @transactions << "#{date} || #{deposited} || #{withdrawn} || #{balance}"
  end

  def print(printer = Printer.new)
    printer.print_header
    printer.print(@transactions)
  end
end
