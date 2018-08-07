Given("the input {string}") do |input|
  @input = input
end

When("the calculator is run") do
  @output = `ruby calculator.rb #{@input}`
end

Then("the output should be {string}") do |output|
  expect(@output).to eq output
end
