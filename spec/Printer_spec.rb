require_relative '../lib/Printer.rb'

describe Printer do
  before(:each) do
    @printer = Printer.new
  end

  it "should print the header: 'Date || Deposits || Withdrawls || Balance'" do
    expect { @printer.print_header }.to output("Date || Deposits || Withdrawls || Balance\n").to_stdout
  end

  it "should print the correct figures in the correct columns" do
    transactions = ["11/09/14 || 100 || 0 || 100"]
    expect { @printer.print(transactions) }.to output("11/09/14 || 100 || 0 || 100.\n").to_stdout
  end
end
