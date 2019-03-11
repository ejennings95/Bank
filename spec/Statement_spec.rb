require_relative '../lib/Statement.rb'

describe Statement do

  let(:testdate) { "15/04/19" }
  let(:testdate2) { "11/08/19" }


  before(:each) do
    @statement = Statement.new
  end

  it "should save every transaction as an array of arrays" do
    date = testdate
    @statement.new_transaction(date, 100, 0, 100)
    expect(@statement.transactions[0]).to eq ["#{date}, 100, 0, 100"]
  end

  it "should save every transaction as an array of arrays" do
    date = testdate
    date2 = testdate2
    @statement.new_transaction(date, 100, 0, 100)
    @statement.new_transaction(date2, 0, 50, 50)
    expect(@statement.transactions[1]).to eq ["#{date2}, 0, 50, 50"]
  end
end
