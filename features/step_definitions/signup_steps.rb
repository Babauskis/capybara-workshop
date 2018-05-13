When(/^I am on Apimation home page/) do
  @pages.page_home.load
  @pages.page_home.isVisible
end

When(/^I open Sign up form/) do
  @pages.page_home.openSignUp
end

Then("I fill in sign up required information - {string}, {string}, {string} and {string}") do |email, password1, password2, project_name|
  @pages.page_home.fillSignUpForm(email, password1, password2, project_name)
end

And(/^I close sign up form/) do
  @pages.page_home.closeSignUp
end

When(/^I open Login form/) do
  @pages.page_home.openLogIn
end

Then("I fill in log in required information - {string} and {string}") do |email, password|
  @pages.page_home.fillLogInForm(email, password)
end

When(/^I try to log in/) do
  @pages.page_home.selectLogin
end

Then(/^Check if incorrect data error returned/) do
  # unless find(:css, '.alert-success + div .errorText').visible?
  #   raise "error not visible"
  # end  
end
