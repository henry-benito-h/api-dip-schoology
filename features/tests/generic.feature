# Created by ICSC at 2/20/2019
Feature: #Enter feature name here
  # Enter feature description here

  Scenario: Test an action
    Given I have this endpoint "/Something/Else"
    And I have a record already created
    When I do a POST request
    And that request has valid values in data
    """
    {
        "message": "Requires ",
        "documentation_url": "https://developer.github.com/v3/users/#get-the-authenticated-user"
    }
    """
    Then I should have 200 as status code
    And for response body I should get a record info
    """
    {
        "message": "Requires ",
        "documentation_url": "https://developer.github.com/v3/users/#get-the-authenticated-user"
    }
    """