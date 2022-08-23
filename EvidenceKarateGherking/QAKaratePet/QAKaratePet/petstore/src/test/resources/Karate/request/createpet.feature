Feature: Service POST
  AS QA Automation
  I want to create an pet
  to check your registration in the system

  Background: consume service
    * url url

    Scenario: add new pet

      * def requestBody = read ('classpath:Karate/request/requestBodyCreatePet.json')
      * def responseBody = read ('classpath:Karate/request/responseCreatePet.json')
      Given path 'pet'
      And request requestBody
      When method post
      Then status 200
      And match response == responseBody
      And assert response.id == requestBody.id
      And assert response.category.id ==requestBody.category.id
      
     Scenario: add pet with invalid data
       Given path 'pet'
       * def requestBody = read ('classpath:Karate/request/requestBodyCreatePetinvalid.json')
       And request requestBody
       When method post
       Then status 500
