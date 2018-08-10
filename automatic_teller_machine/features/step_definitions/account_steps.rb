Given("my account has been credited with ${int}") do |amount|
  sleep 1
  my_account.credit(amount)
end

Then("the balance of my account should be ${int}") do |amount|
  eventually do
    expect(my_account.balance).to eq amount
  end
end
