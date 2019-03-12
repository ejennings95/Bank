require_relative '../lib/statement.rb'

describe Statement do
  let(:testdate) { '15/04/19' }
  let(:testdate2) { '11/08/19' }

  before(:each) do
    @statement = Statement.new
  end

  it 'should save every transaction' do
    date = testdate
    @statement.new_transaction(100, 0, 100, date)
    expect(@statement.transactions[0]).to eq "#{date} || 100 || 0 || 100"
  end

  it 'should add the transaction to the transactions array' do
    date = testdate
    expect { @statement.new_transaction(100, 0, 100, date) }.to change { @statement.transactions.length }.by(1)
  end

  it 'should save every transaction as an array of arrays' do
    date = testdate
    date2 = testdate2
    @statement.new_transaction(100, 0, 100, date)
    expect { @statement.new_transaction(0, 50, 50, date2) }.to change { @statement.transactions.length }.by(1)
  end
end
