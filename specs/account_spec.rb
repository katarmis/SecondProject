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
    amount = 300
    subject = Account.new(100)
    subject.deposit(amount).should == subject.balance

  end

   it "should return the new balance after we withdraw" do
    amount = 50
    subject = Account.new(100)
    subject.deposit(amount).should == subject.balance

  end

  it "should tranfer the balance to the other account" do
    account1 = Account.new(700)
    account2 = Account.new()

    value = 200
    account1.transfer_to(account2, value)

    account2.balance.should ==500

  end

end