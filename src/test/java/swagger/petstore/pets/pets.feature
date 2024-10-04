Feature: Example pet
  
  Background:
    * url 'https://petstore.swagger.io/v2'
  
  Scenario: get pet by id
    Given path 'pet/232323'
    When method get
    Then status 200
  
  Scenario: Create pet
    * def pet =
      """
            {
      "id": 202020,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "doggie",
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
    Given path 'pet'
    Given request pet
    When method post
    Then status 200