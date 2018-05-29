When(/^I am on Apimation home page/) do
   @tests.login_tests.load_home_page
end

When(/^I open Sign up form/) do
  @tests.login_tests.validate_sign_up
end

Then(/^I fill in Sign up required information/) do
  @tests.login_tests.submit_sign_up_form()
end

And(/^I close Sign up form/) do
  @tests.login_tests.close_sign_up_form
end

When(/^I open Login form/) do
  @tests.login_tests.validate_login_form
end

Then(/^I fill in Login required information/) do
  @tests.login_tests.submit_login_form()
end

Then(/^I click login button from Login Form/) do
  @tests.login_tests.click_login_button_login_form
end

Then(/^I validate negative Login error message/) do
  @tests.login_tests.validate_negative_login_form
end