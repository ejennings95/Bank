require_relative '../../lib/Account.rb'

describe Account do
  it 'should be possible to depsoit 100 pounds and then withdraw 50 pounds' do
    account = Account.new
    account.deposit(100)
    expect(account.withdrawl(50)).to eq "You have succesfully withdrawn £50."
  end
end
