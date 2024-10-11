Feature: Login and register Test on reqres.in
  
  Background:
    * def urlBase = 'https://reqres.in/'
    * def loginPath = '/api/login'
  
  Scenario Outline: As a <desciption> I want to get the corresponding response_code <status_code>
    Given url urlBase+loginPath
    And request {'email':<username>, 'password': <password>}
    When method post
    Then response.status == <status_code>
    Examples:
      | username             | password     | status_code | description  |
      | 'eve.holt@reqres.in' | 'cityslicka' | 200         | valid user   |
      | 'eve.holt@reqres.in' | null         | 400         | invalid user |