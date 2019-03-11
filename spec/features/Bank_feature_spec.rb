require_relative '../../lib/Account.rb'
require_relative '../../lib/Statement.rb'

describe Account do

  context "Account can deposit and withdraw" do

    it 'should be possible to depsoit 100 pounds and then withdraw 50 pounds' do
      account = Account.new
      account.deposit(100)
      expect(account.withdraw(50)).to eq "You have succesfully withdrawn £50. Your balance is now £50."
    end
  end

  context "Printed statments" do
    it 'should have the date of the transaction and final balance' do
      account = Account.new
      statement = Statement.new
      date = Time.now.strftime("%d/%m/%y")
      account.deposit(100)
      expect(statement.print).to eq "#{date} || 100 || 0 || 100."
    end
  end
end
