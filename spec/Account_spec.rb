require_relative '../lib/Account.rb'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it "should have an original balance of 0 pounds" do
    expect(@account.balance).to eq 0
  end

  it "should be possible to deposit money to your account" do
    expect(@account.deposit(10)).to eq "You have succesfully deposited £10."
  end
end
