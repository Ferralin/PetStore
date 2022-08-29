@deletePet
Feature: Service DELETE
  AS QA Automation
  I want to delete an a pet
  to check that it has been eliminated in the system

  Background:
    * url url
@deletePetHappyPath
    Scenario: Delete a pet
      * def requestBody = read ('classpath:Karate/deleteAPet/requestDeletesAPet.json')
      Given path 'pet', '1'
      When method DELETE 
      Then status 200

@deletePetInvalid
  Scenario: Delete a pet
    * def requestBody = read ('classpath:Karate/deleteAPet/requestDeletesAPetinvalid.json')
    Given path 'pet', 'qwerty'
    When method DELETE
    Then status 404

  @deletePetInvalid
  Scenario: Delete a pet
    * def requestBody = read ('classpath:Karate/deleteAPet/requestDeletesAPetinvalid.json')
    Given path 'pet', '123'
    When method DELETE
    Then status 404
      
    