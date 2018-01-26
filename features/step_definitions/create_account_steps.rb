When(/^I enter a random valid email address$/) do
  visit(CreateAccountPage).create_account Faker::Internet.email
end

When(/^I enter an email address of "([^"]*)"$/) do |email|
  visit(CreateAccountPage).create_account email
end

Then(/^a message is displayed that my account was created$/) do
  expect(on(AccountConfirmationPage)).to have_account_confirmation
end

Then(/^an error message is displayed$/) do
  expect(on(AccountConfirmationPage)).to have_account_creation_error
end