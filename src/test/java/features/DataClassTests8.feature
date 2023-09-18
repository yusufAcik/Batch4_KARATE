Feature: Data Tests

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: get all users with kraft
    Given url kraftBaseUrl + "/allusers/alluser"
    Given param page = 1
    Given param pagesize = 10
    When method get
    * def expectedResponse = read("data/users.json")
    Then match response == expectedResponse