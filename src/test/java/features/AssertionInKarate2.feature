Feature: assertions by using match keyword

  Scenario: some matching example
    * def name = "Ayse"
    * match name == "Ayse"
    * match name != "Emine"

  Scenario: more matching example
    * def employee =
    """
    {
    "firstName": "Hasan",
    "lastName": "Yıldırım",
    "salary": 55000,
    "active": true
    }
    """
    * match employee.firstName == "Hasan"
    * match employee.lastName == "Yıldırım"
    * match employee.salary ==  55000
    * match employee.active == true

  Scenario: fuzzy matching
    * def employee =
    """
    {
    "firstName": "Hasan",
    "lastName": "Yıldırım",
    "salary": 55000,
    "active": true
    }
    """
    * match employee.firstName == "#string"
    * match employee.lastName == "#string"
    * match employee.salary == "#number"
    * match employee.active == "#boolean"
    # validate that firstName exist
    * match employee.firstName == "#present"
    # validate that lastName does not exist
    * match employee.gender == "#notpresent"

  Scenario: contains matching
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
    # how to verify length of array
  * def lengthOfArray = students.length
  * match lengthOfArray == 2
    # how to check if array contains a specific element
  * match students contains {"name": "Ümit", "salary": 52000}

  Scenario: contains matching-2
    * def arr = ["Serkan", "Suad", "Ziya", "Uğur"]
    * print arr
    * match arr contains "Serkan"
    * match arr !contains "Eren"