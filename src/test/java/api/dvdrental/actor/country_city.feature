Feature: Create country and city
  This feature to create country and city


  Background:
    * configure report = { showLog: true, showAllSteps: false }
    * def jsonCountry = read('classpath:api/dvdrental/jsonFiles/country.json')
    * def jsonCity = read('classpath:api/dvdrental/jsonFiles/city.json')

    Scenario Outline: Create country and city

      Given url baseUrl + '/country'
      * set jsonCountry[0].country='<country>'
      * print jsonCountry
      Then request jsonCountry
      Then method post
      And status 201

      Examples:
      |country|
      |Pandora  |


