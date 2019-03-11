require_relative '../lib/Account.rb'

describe Account do
  it "should have an original balance of 0 pounds" do
    account = Account.new
    expect(account.balance).to eq 0
  end
end
