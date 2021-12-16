Feature: Create -> Retrieve -> Modify -> Delete
  I want to use this feature to do CRUD in actors table

  Background: 
    * configure report = { showLog: true, showAllSteps: false }
    * def jsonRequest = read('classpath:api/dvdrental/jsonFiles/actor.json')

  @actor
  Scenario: CRUD
    Given url baseUrl + '/actor'
    Then method get
    And match response[0].actor_id==332
    * set jsonRequest[0].first_name= 'Adam'
    * remove jsonRequest[0].actor_id
    * print jsonRequest

    Scenario: Create an actor
      Given url baseUrl + '/actor'
      * set jsonRequest[0].first_name = 'Mubariz'
      * set jsonRequest[0].last_name = 'Ibrahimov'
      * remove jsonRequest[0].actor_id
      * remove jsonRequest[0].last_update
      * print jsonRequest
      Then request jsonRequest
      Then method Post
      And status 201


    
    
    
    
    
