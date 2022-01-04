Feature: Google Search Functionality

  Scenario: Searching Python Programming language
    Given driver 'https://google.com'
    And input('input[name=q]', 'Python Programming Language')
    And click('input[name=btnK]')
    Then match driver.url == 'https://www.google.com'