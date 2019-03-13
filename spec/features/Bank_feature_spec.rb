require_relative '../../lib/account.rb'
require_relative '../../lib/statement.rb'

describe Account do
  context 'Account can deposit and withdraw' do
    it 'should be possible to depsoit 100 pounds and then withdraw 50 pounds' do
      account = Account.new
      account.deposit(100)
      expect { account.withdraw(50) }.to change { account.balance }.by(-50)
    end
  end

  context 'Printed statments' do
    it 'should print the header followed by the transaction' do
      statement = Statement.new
      account = Account.new(statement)
      date = Time.now.strftime('%d/%m/%y')
      account.deposit(100)
      expect { statement.print }.to output("Date || Deposits || Withdrawals || Balance\n#{date} || 100.00 || 0 || 100.00\n").to_stdout
    end
  end
end
