Given("I have ${int} in my Account") do |amount|
  my_account.deposit(amount)
  expect(my_account.balance).to eq amount
end

Then("the balance of my account should be ${int}") do |amount|
  expect(my_account.balance).to eq amount
end
