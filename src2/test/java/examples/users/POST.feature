Feature: POST API Testing as assignment

  Background: 
    * url 'https://petstore.swagger.io'
    * header Accept = 'application/json'
    * def expectedOutput = read("response.json")
    * def output = read("response1.json")

  #Simple POST API Request
  Scenario: Test Pet Store POST API Request 1
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {"id":12,"category":{"id":98765,"name":"Relina"},"name":"RugbyGoat","photoUrls":["string"],"tags":[{"id":12345,"name":"Debeena"}],"status":"available"}
    When method POST
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies

  # POST API Request with Backgroung and assertions
  Scenario: Test Pet Store POST API Request 2
    Given path '/v2/pet'
    And request {"id":13,"category":{"id":67543,"name":"Chinchilla"},"name":"Bunny","photoUrls":["string"],"tags":[{"id":32456,"name":"Birdie"}],"status":"available"}
    When method POST
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
    * assert response.id != null
    * def id = response.id

  # POST API Request with Backgroung and assertions reading response from file
  Scenario: Test Pet Store POST API Request 3
    Given path '/v2/pet'
    And request {"id":14,"category":{"id":76543,"name":"Chinnari"},"name":"Muddu","photoUrls":["string"],"tags":[{"id":87956,"name":"Kanda"}],"status":"available"}
    When method POST
    Then status 200
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
    And match response == expectedOutput
    And print response

  # POST API Request with Background and assertions reading requestbody using relative path
  Scenario: Test Pet Store POST API Request 4
    Given path '/v2/pet'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath + '/src/test/java/examples/request.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 200
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies
    And match response == output
    And print response
