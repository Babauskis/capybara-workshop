When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end

When(/^I open Sign up form/) do
  unless find(:css, '#signup-b').visible?
    raise "signup-b is not visible"
  end
  find(:css, '#signup-b').click
end

Then("I fill in sign up required information - {string}, {string} and {string}") do |email, password, project_name|
  unless find(:css, '#signup').visible?
    raise "signup is not visible"
  end
  find(:css, "#signup input[type='email']").send_keys(email)
  find(:css, "input[name='password1']").send_keys(password)
  find(:css, "input[name='password2']").send_keys(password)
  find(:css, "input[name='project_name']").send_keys(project_name)
end

And(/^I close sign up form/) do
  find(:css, '#signup .closecross').click
  unless find(:css, '#signup').visible?
    raise "signup .closecross is not visible"
  else
    raise "signup .closecross is visible"
  end 
end

When(/^I open Login form/) do
  find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "login-b not visible"
  end
end

Then("I fill in log in required information - {string} and {string}") do |email, password|
  unless find(:css, '#login').visible?
    raise "login is not visible"
  end
  find(:css, "#login .field-wrap input[type='email']").send_keys(email)
  find(:css, "input[name='password']").send_keys(password)
end

When(/^I try to log in/) do
  find(:css, '.button-block').click
end

Then(/^Check if incorrect data error returned/) do
  unless find(:css, '.alert-success + div .errorText').visible?
    raise "error not visible"
  end  
end