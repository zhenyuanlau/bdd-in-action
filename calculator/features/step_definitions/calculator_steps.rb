Given("the input {string}") do |string|
  @input = string
end

When("the calculator is run") do
  @output = `ruby calc.rb #{@input}`
end

Then("the output should be {string}") do |string|
  @output == string
end
