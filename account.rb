class Account

  attr_accessor :balance

  def initialize(starting_balance =0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance = @balance + amount
    return @balance
  end

  def withdraw(amount)
    @balance = @balance - amount

    return @balance
  end

  def transfer_to(target_Account, tranfered_value)
    withdraw(tranfered_value)
    puts balance

    target_Account.balance = @balance

  end

end