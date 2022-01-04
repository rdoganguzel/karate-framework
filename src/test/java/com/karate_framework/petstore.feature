Feature: Petstore APi Testing

  Scenario: Create a pet using Post
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet'
    And header Accept = 'application/json'
    And def requestPayload =
    """
   {
  "id": 595908,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "algo",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
    """
    When method POST
    Then status 200
    And def name = response.name
    And match name == 'algorand'

  Scenario: Get Request Positive Testing
    Given url 'https://petstore.swagger.io/v2'
    And path 'pet/595908'
    When method GET
    Then status 404
    And def message = response.message
    And match message == 'Pet not found'