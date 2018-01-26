Feature: Sign up with Email
  In order to create a new account
  As a new user
  I want to supply my email address


  Scenario: Successfully create an account with email
    When I enter an email address of "tester@fakedomain.com"
    Then a message is displayed that my account was created


  Scenario Outline: Invalid email address handled
    When I enter an email address of "<invalid_email>"
    Then an error message is displayed
    Examples:
      | invalid_email       |
      | @forgotmyname.com   |
      |                     |
      | forgotmydomain@     |
      | me@notopleveldomain |


  Scenario: Random email address
    When I enter a random valid email address
    Then a message is displayed that my account was created
