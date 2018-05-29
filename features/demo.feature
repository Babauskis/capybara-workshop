Feature: Demo Feature

    Scenario: I can fill in sign up form
        Given I am on Apimation home page
        When I open Sign up form
        Then I fill in Sign up required information
        And I close Sign up form

    Scenario: I can fill in login form and validate an incorrect input
        Given I am on Apimation home page
        When I open Login form
        Then I fill in Login required information
        And I click login button from Login Form
        Then I validate negative Login error message