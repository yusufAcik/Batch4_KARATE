Feature: Post Method + Karate/Java Integration

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: register a new user with Kraft
    Given url kraftBaseUrl + "/allusers/register"
    Given request
    """
    {
  "name": "test1111",
  "email": "test1111@krafttechexlab.com",
  "password": "123467"
}
    """
    When method post
    Then status 200
    Then print response

  Scenario: Register a new user with the help of Java
    #point the class that we want to run
    #Java.type --> used to connect to java class
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
    #request
    Given url kraftBaseUrl + "/allusers/register"
    Given request newUser
    When method post
    #response
    When status 200
    Then match newUser.name == response.name
    Then match newUser.email == response.email