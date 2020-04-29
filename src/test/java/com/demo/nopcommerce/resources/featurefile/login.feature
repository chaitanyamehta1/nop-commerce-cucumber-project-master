Feature: Login Functionality
  As a user
  I want to login on nop commerce website

  Scenario: Verify user should navigate to login page
    Given I am on nop commerce Home Page
    When I click on Login button
    Then I should be in login page

  Scenario: Verify user should login with valid credentials successfully
    Given I am on nop commerce Home Page
    And I click on Login button
    When I enter email id "dhanno@gmail.com"
    And I enter password "123456"
    And I click on Login tab
    Then I should be login successfully

  Scenario Outline: Verify user should not login without email Id credentials
    Given I am on nop commerce Home Page
    And I click on Login button
    When I enter email id "<email>"
    And I enter password "<password>"
    And I click on Login tab
    Then I should be not login system throws "<errorMessage>"
    Examples:
      | email | password    | errorMessage            |
      |       | 1234@       | Please enter your email |
      |       | 123fghem@   | Please enter your email |
      |       | sdfvgg1234@ | Please enter your email |
      |       | 1234wedsc@  | Please enter your email |
      |       | 1234wedsc@  | Please enter your email |