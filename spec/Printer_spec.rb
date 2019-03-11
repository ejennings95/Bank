require_relative '../lib/Printer.rb'

describe Printer do
  before(:each) do
    @printer = Printer.new
  end

  it "should print the header: 'Date || Deposits || Withdrawls || Balance'" do
    expect(@printer.print_header).to eq "Date || Deposits || Withdrawls || Balance"
  end
end
