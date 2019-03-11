require_relative '../lib/Statement.rb'

describe Statement do
  before(:each) do
    @statement = Statement.new
  end

  it "should save every transaction as an array of arrays" do
    @statement.new_transaction(100, 0, 100)
    allow(DateOfTransaction).to receive(:format) {15/04/19}
    expect(@statement.transactions[0]).to eq "15/04/19, 100, 0, 100"
  end
end
