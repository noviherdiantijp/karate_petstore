Feature: rapid API Test

  Background:
    * url "https://tasty.p.rapidapi.com/"
    * def xRapidapiHost = 'tasty.p.rapidapi.com'
    * def xRapidapiKey = 'ee4040eba9mshd9033f2f5c40952p1345ccjsna5f8ea3610c3'

  Scenario: Get Auto Complete
    Given path 'recipes/auto-complete'
    And header Content-Type = 'application/json'
    And header x-rapidapi-host = xRapidapiHost
    And header x-rapidapi-key = xRapidapiKey
    And param from = 0
    And param size = 20
    And param tags = 'under_30_minutes'
    When method get
    Then status 200
    And response.count !== empty
    And print response

  Scenario: Get List
    Given path 'recipes/list'
    And header Content-Type = 'application/json'
    And header x-rapidapi-host = xRapidapiHost
    And header x-rapidapi-key = xRapidapiKey
    And param prefix = 'chicken soup'
    When method get
    Then status 200
    And print response

  Scenario: Get List Similarities
    Given path 'recipes/list-similarities'
    And header Content-Type = 'application/json'
    And header x-rapidapi-host = xRapidapiHost
    And header x-rapidapi-key = xRapidapiKey
    And param recipe_id = 8138
    When method get
    Then status 200
    And print response

  Scenario: Get More Info
    Given path 'recipes/get-more-info'
    And header Content-Type = 'application/json'
    And header x-rapidapi-host = xRapidapiHost
    And header x-rapidapi-key = xRapidapiKey
    And param id = 8138
    When method get
    Then status 200
    And print response

  Scenario: Get Tips List
    Given path 'tips/list'
    And header Content-Type = 'application/json'
    And header x-rapidapi-host = xRapidapiHost
    And header x-rapidapi-key = xRapidapiKey
    And param from = 0
    And param size = 30
    And param id = 3562
    When method get
    Then status 200
    And print response

