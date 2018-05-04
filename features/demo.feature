Feature: Demo Feature

    Scenario: I can fill in sign up view
        Given I am on Appimation home page
        When I open Sign up form
        Then I fill in sign up required information - "sandis@gmail.com", "Parole123" and "capybara_project"
        And I close sign up form

    Scenario: test
        Given I am on Appimation home page
        When I open Login form
        Then I fill in log in required information - "sandis@gmail.com" and "Parole123"
        When I try to log in
        Then Check if incorrect data error returned