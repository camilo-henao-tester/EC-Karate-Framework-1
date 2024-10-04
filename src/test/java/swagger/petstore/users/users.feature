Feature: Example users
  
  Background:
    * url 'https://petstore.swagger.io/v2'
  
  Scenario: get user by username
    Given path 'user/RetroCam'
    When method get
    Then status 200
  
  Scenario: Create user
    * def user =
    """
      {
        "id": 25,
        "username": "RetroCam",
        "firstName": "juan",
        "lastName": "henao",
        "email": "string",
        "password": "1234",
        "phone": "string",
        "userStatus": 0
      }
    """
  
    Given path 'user'
    Given request user
    When method post
    Then status 200