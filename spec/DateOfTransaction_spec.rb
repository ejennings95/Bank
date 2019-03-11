require_relative '../lib/DateOfTransaction.rb'

describe DateOfTransaction do
  it "should return the date formatted dd/mm/yy" do
    date_of_transaction = DateOfTransaction.new
    date = Date.today
    expect(date_of_transaction.format).to eq "#{date}.strftime(%d/%m/%y)"
  end
end
