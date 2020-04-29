Feature: Register Functionality
  As a user
  I want to register on nop commerce website

  Scenario: Verify user should navigate to register page successfully
    Given I am on nop commerce Home Page
    When I click on register feature
    Then I should be on register page successfully

  Scenario: Verify user should register successfully with valid credentials
    Given I am on nop commerce Home Page
    And I click on register feature
    And I select gender
    When I enter user first name "dhannorunner"
    And I enter last name "runner"
    And I select day of birth "4"
    And I select date of birth month "march"
    And I select date of birth year "1986"
    And I enter "email"
    And I enter company name "dhannorunner limited"
    And I click on check box of news letter
    And I enter password "dhannoruuun1223"
    And I enter confirm password "dhannoruuun1223"
    And I click on register button
    Then I should register successfully


  Scenario Outline: Verify user should not register without last name
    Given I am on nop commerce Home Page
    And I click on register feature
    And I select gender
    When I enter user first name "<firstName>"
    And I enter last name "<lastName>"
    And I select day of birth "<day>"
    And I select date of birth month "<month>"
    And I select date of birth year "<year>"
    And I enter email "<emailId>"
    And I enter company name "<companyName>"
    And I click on check box of news letter
    And I enter password "<password>"
    And I enter confirm password "<confirmPassword>"
    And I click on register button
    Then I should not register successfully "<errorMessage>"
    Examples:
      | firstName | lastName | day | month | year | emailId             | companyName | password      | confirmPassword | errorMessage           |
      | bhavesh   |          | 7   | 12    | 1985 | nirooshan@gmail.com | abc limited | dhanno12345@@ | dhanno12345@@   | Last name is required. |
      | lamee     |          | 8   | 1     | 1975 | niron@gmail.com     | abd limited | dhanno123@@   | dhanno123@@     | Last name is required. |
      | brijesh   |          | 4   | 6     | 1995 | practice@gmail.com  | abs limited | dhanno345@@   | dhanno345@@     | Last name is required. |
      | ankita    |          | 2   | 2     | 1965 | return@gmail.com    | abq limited | dhan12345@@   | dhan12345@@     | Last name is required. |
      | mey       |          | 9   | 10    | 1970 | anusk@gmail.com     | abr limited | dhanno1345@@  | dhanno1345@@    | Last name is required. |


