require_relative '../lib/date_of_transaction.rb'

describe DateOfTransaction do
  let(:testdate) { '2019-03-13' }

  it 'should return the date formatted dd/mm/yy' do
    date_of_transaction = DateOfTransaction.new
    expect(date_of_transaction.format).to eq '13/03/19'
  end
end
