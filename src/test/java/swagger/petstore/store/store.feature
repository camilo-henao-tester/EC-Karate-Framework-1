Feature: Example store
  
  Background:
    * url 'https://petstore.swagger.io/v2'
  
  Scenario: get order by id
    Given path 'store/order/5'
    When method get
    Then status 200
  
  Scenario: Create store
    * def order =
    """
        {
      "id": 2,
      "petId": 202020,
      "quantity": 0,
      "shipDate": "2024-10-02T23:36:19.468Z",
      "status": "placed",
      "complete": true
      }{
      "id": 0,
      "petId": 0,
      "quantity": 0,
      "shipDate": "2024-10-02T23:36:19.468Z",
      "status": "placed",
      "complete": true
      }
    """
  
    Given path 'store/order'
    And request store
    When method post
    Then status 200