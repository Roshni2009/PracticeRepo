Feature: GET API testing for Assignment

Background:
* url 'https://petstore.swagger.io'
* header Accept = 'application/json'


# 1. Simple GET API Request 
  Scenario: Test Pet Store GET API
    Given url 'https://petstore.swagger.io/v2/pet/10'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
  
# 2. GET API Request with Background and assertions 
  Scenario: Test Pet Store GET API
    Given path '/v2/pet/10'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
    And match response.name == 'Alexaa'
    And assert response.category.id == 0
    
  

