Feature: Kraft tests with token

  Background:
    * def authFeature = call read("CreateKraftUserAndGetToken6.feature")
    * def accessToken = authFeature.token

  Scenario: get user information
    Given url "https://www.krafttechexlab.com/sw/api/v1/user/me"
    Given header token = accessToken
    When method get
    Then status 200
