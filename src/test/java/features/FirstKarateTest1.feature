@student
Feature: Welcome to Karate

  #how to print console
  Scenario: how to print
    Given print "Hello World"
    When print 'another print'
    Then print 'only print'

    # * --> represents given when and then
    # , --> concatenating two strings with adding a space
  Scenario: more printing
    Given print "some words to print"
    * print "my name is" + ' karate kid'
    * print "my name is", 'karate kid'

    # how to define variables
  # def is common keyword for all variables (String, Integer, boolean, JSON, ...)
  Scenario: variables
    * def name = "Mike"
    * print "my name is", name
    * def age = 20
    * print name, "is", age, "years old"

  Scenario: different objects (json objects)
    * def student = {'name': "Onur", "owes_tuition": false}
    * print student
    * print student.name
    * print student.owes_tuition

    # how to define a JSON object easily
  Scenario: json object-2
    * def student =
    """
    {
    "firstName": 'İrfan',
    "lastName": 'Arıkan',
    "salary": 50000
    }
    """
    * print student

  Scenario: json object-3
    * def gorestUser =
    """
    {
        "id": 5104288,
        "name": "Saroja Khanna",
        "email": "saroja_khanna@lind-robel.example",
        "gender": "male",
        "status": "active"
    }
    """
    * print gorestUser
    * print gorestUser.id
    * print gorestUser.name
    * print gorestUser.email
    * print gorestUser.gender
    * print gorestUser.status

    @students
  Scenario: json array objects
    * def students =
    """
    [
    {
    "name": "Ümit",
    "salary": 52000
    },
    {
    "name": "Hatice",
    "salary": 10000
    }
    ]
    """
    * print students
      
      #how to reach firstname
  * print students[0].name
      # how to reach second salary
  * print students[1].salary