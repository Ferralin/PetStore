@findPet
Feature: Service client GET
  As Qa Automation
  I want to get for a pet by id
  To validate the status code and response

  Background:
    * url url
@findPetHappyPath
  Scenario: Check the service GET method
    Given path 'pet', 'findByStatus'
    When method GET
    * def requestBody = read ('classpath:Karate/findPetByStatus/requestFindPetByStatusvalid.json')
    Then status 200

@findPetNegative
Scenario: Check the service GET method
    Given path 'pet', 'findByStatus09'
    When method GET
    * def requestBody = read ('classpath:Karate/findPetByStatus/requestFindPetByStatusinvalid.json')
    Then status 404