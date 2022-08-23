Feature: Service client PUT
  AS QA Automation
  I want to update a pet with the put method
  To validate the status code and response

  Background:
    * url url

  Scenario: Check the service PUT method
    * request {}
    Given path 'pet'
    When method put
    * def requestBody = read ('classpath:Karate/request/updateAnExistingPet.json')
    Then status 200


  Scenario: Check the service PUT method
    * request {}
    Given path 'pet','lola'
    When method put
    * def requestBody = read ('classpath:Karate/request/updateAnExistingPetinvalid.json')
    Then status 405
