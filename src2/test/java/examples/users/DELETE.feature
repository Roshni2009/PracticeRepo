Feature: DELETE API testing for Assignment

Background:
* url 'https://petstore.swagger.io'
* header Accept = 'application/json'


# 1. Simple DELETE API Request 
  Scenario: Test Pet Store GET API 1
    Given url 'https://petstore.swagger.io/v2/pet/10'
    When method DELETE
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    
  
# 2. GET API Request with Background 
  Scenario: Test Pet Store DELETE API 2
    Given path '/v2/pet/12'
    When method DELETE
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    
    
  

