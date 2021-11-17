
Feature: Pruebas de Apis Alpha Code
  Background:
    * def postData = read('classpath:CountryLayer/Data/datosPost.json')
    Given url urlCountryLayer

  Scenario Outline: Consultar Solo Algunos Paises y su detalle
    Given path 'alphaPost'
    And param access_key = 'c1c344e70e555fa494e3b4aca4dd618d'
    And header accept = '*/*'
    And request { "name": <name>, "alpha2_code": <alpha2_code>, "alpha3_code": <alpha3_code>}
    When method get
    Then status <statusCode>
    * print response
    Examples:
      | karate.jsonPath(postData, "$[?(@.escenario =='01')]") |
