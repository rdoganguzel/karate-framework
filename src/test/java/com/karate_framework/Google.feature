Feature: Google Search Functionality

  Scenario: Searching Java Programming language
    Given driver 'https://google.com'
    And input('input[name=q]', 'Java Programming Language')
    And click('input[name=btnK]')
    Then match driver.url == 'https://www.google.com/1'