require_relative '../lib/Account.rb'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it "should have an original balance of 0 pounds" do
    expect(@account.balance).to eq 0
  end

  it "should be possible to deposit money to your account" do
    expect(@account.deposit(10)).to eq "You have succesfully deposited £10. Your balance is now £10."
  end

  it "should not be possible to withdraw more money than is in your account" do
    expect { @account.withdraw(1) }.to raise_error 'Insufficient funds.'
  end
end
