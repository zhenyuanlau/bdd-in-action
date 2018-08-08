class Account
  def deposit(amount)
    @balance = amount
  end

  def balance
    @balance
  end
end

class Teller
  def withdraw_from(account, amount)
  end
end

class CashSlot
  def contents
    raise "I'm empty!"
  end
end

module KnowsTheDomain
  def my_account
    @my_account ||= Account.new
  end

  def cash_slot
    @cash_slot ||= CashSlot.new
  end
end

World KnowsTheDomain

Given("I have ${int} in my Account") do |amount|
  my_account = Account.new
  my_account.deposit(amount)
  expect(my_account.balance).to eq amount
end

When("I withdraw ${int}") do |amount|
  teller = Teller.new
  teller.withdraw_from(my_account, amount)
end

Then("${int} should be dispensed") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end
