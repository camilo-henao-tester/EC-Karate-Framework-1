Feature: Test in reqres.in
  Background:
    * url 'https://reqres.in/'
    Scenario: Get user
      Given path 'api/users+2'
      When method get
      Then status 200
    Scenario: Get a list of user
      * def jsonResponse = read('../json/listUser.json')
      * def urlBase = 'https://reqres.in'
      * def userPath = '/api/users'
      Given url urlBase+userPath+'?page=1'
      When method get
      Then status 200
      And match $ == jsonResponse
      And match $..first_name contains 'Charles'
      And match $..id contains'#notnull'
      
    Scenario: Put user
      * def urlBase = 'https://reqres.in'
      * def userPath = '/api/users'
      Given url urlBase+userPath+'/2'
      And request { name:'Don Julio', job: 'leader QA'}
      When method PUT
      Then status 200
      And match $.name == 'Don Julio'
      
    Scenario: Delete user
      * def urlBase = 'https://reqres.in'
      * def userPath = '/api/users'
      Given url urlBase+userPath+'/2'
      When method Delete
      Then status 204
      