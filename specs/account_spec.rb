require "rspec"
require "../account.rb"

describe "Account" do

  it "should initially have a balance of zero" do

    account = Account.new
    account.balance.should ==0.0

  end

  it "should have a balance equal to the starting balance" do
    starting_balance = 100
    subject = Account.new(starting_balance)
    subject.balance.should == starting_balance

  end

  it "should return the new balance after we deposit" do
    ammount = 300
    subject = Account.new(100)
    subject.balance.should == subject.deposit(ammount)

  end

end