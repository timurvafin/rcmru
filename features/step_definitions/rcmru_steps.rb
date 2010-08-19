When /^I fetch latest data for rcmru index with id: "([^"]*)"$/ do |index|
  @index = Rcmru::Index.new(index)
end

When /^I get pai data for that index$/ do
  @pai = @index.pai
end

Then /^I should get valid pai number$/ do
  @pai.should_not be_nil
  @pai.should be_a_kind_of(Float)
end
