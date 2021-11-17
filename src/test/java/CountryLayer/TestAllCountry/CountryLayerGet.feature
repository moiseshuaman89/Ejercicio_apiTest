@ignore
Feature: Pruebas de Apis ALL
  Background:
    Given url urlCountryLayer

  Scenario: Consultar Todos los Paises
    Given path 'all'
    And param access_key = 'c1c344e70e555fa494e3b4aca4dd618d'
    And header accept = '*/*'
    When method get
    Then status 200
    * print response
