Feature: Get User Token

  Background:
    * def kraftBaseUrl = "https://www.krafttechexlab.com/sw/api/v1"

  Scenario: Register a new user with the help of Java
    #request
    Given def KDG = Java.type("utilities.KraftDataGenerator")
    Given def newUser = KDG.createUser()
    Given url kraftBaseUrl + "/allusers/register"
    Given request newUser
    When method post
    #response
    When status 200
    Then match newUser.name == response.name
    Then match newUser.email == response.email
    Then match response.id == "#number"
    #get token
    Then def token = response.token


