Feature: Customer
  This feature is create customer

  Background:
    * configure report = { showLog: true, showAllSteps: false }
    * def addressJson = read('classpath:api/dvdrental/jsonFiles/address.json')


  Scenario: Create customer
    Given url baseUrl + '/address'
    * set addressJson[0].address = 'F.Qayibov 12 '
    * set addressJson[0].district = 'Nasosnu'
    * set addressJson[0].city_id = 94
    * set addressJson[0].postal_code = '02132'
    Then request addressJson
    Then  method post
    And status 201
    Then url baseUrl + '/address?address_id=eq.611'
      Then request addressJson
      Then method get
      Then status 200
    * def address_id = response[0].address_id
    * print address_id
    Then url baseUrl + '/address?address_id=eq.611'
    Then method delete
    Then request addressJson
    Then status 204



