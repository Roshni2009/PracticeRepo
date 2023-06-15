Feature: PUT API testing for Assignment

Background:
* url 'https://petstore.swagger.io'
* header Accept = 'application/json'
* def output = read("putresponse.json")


# 1. Simple PUT API Request 
  Scenario: Test Pet Store PUT API 1
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id":10,"category":{"id":0,"name":"Rubeena"},"name":"Alexaa","photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"available"}
    When method PUT
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
  
# 2. PUT API Request with Background and assertions and variables
  Scenario: Test Pet Store PUT API 2
    Given path '/v2/pet'
    And def requestBody = read('reqBody.json')
    And request requestBody
    When method PUT
    Then status 200
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
    And match response == output
    And print response
    
  

