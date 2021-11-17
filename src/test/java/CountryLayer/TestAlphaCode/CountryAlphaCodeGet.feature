
Feature: Pruebas de Apis Alpha Code
  Background:
    * def countryData = read('classpath:CountryLayer/Data/datosCountry.json')
    Given url urlCountryLayer

  Scenario Outline: Consultar Solo Algunos Paises y su detalle
    Given path 'alpha/'+'<alpha2Code>'
    And param access_key = 'c1c344e70e555fa494e3b4aca4dd618d'
    And header accept = '*/*'
    When method get
    Then status <statusCode>
    * print response
    And match response == { "name": <name>, "topLevelDomain": <topLevelDomain>,"alpha2Code": <alpha2Code>,"alpha3Code": <alpha3Code>,"callingCodes": <callingCodes>,"capital": "<capital>","altSpellings": <altSpellings>,"region": <region>,"subregion": <subregion>,"population": <population>,"latlng": <latlng>,"demonym": <demonym>,"area": <area>,"gini": <gini>,"timezones": <timezones>,"borders": <borders>,"nativeName": <nativeName>,"numericCode": "<numericCode>","currencies": <currencies>}
    Examples:
      | karate.jsonPath(countryData, "$[?(@.escenario =='01')]") |
