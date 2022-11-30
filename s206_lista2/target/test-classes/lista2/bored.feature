Feature: Testando API Bored

Background: Executa antes de cada teste
    * def url_base = 'https://www.boredapi.com/api/'

Scenario: Testando retorno para atividades com 1 participante
    Given url url_base
    And path 'activity'
    When method get
    Then status 200
    //And match response.participants == 1


