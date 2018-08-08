Given("I have ${int} in my Account") do |amount|
  my_account = Account.new
  my_account.deposit(amount)
  expect(my_account.balance).to eq amount
end
