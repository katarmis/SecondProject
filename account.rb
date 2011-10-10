class Account
  # To change this template use File | Settings | File Templates.
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  account1 = Account.new(0)

end