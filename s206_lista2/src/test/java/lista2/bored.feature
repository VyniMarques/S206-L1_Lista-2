Feature: Testando API Bored

Background: Executa antes de cada teste
    * def url_base = 'https://www.boredapi.com/api/activity'

#Teste 1
Scenario: Testando retorno para atividades com 1 participante
    Given url url_base
    And path '?participants=1'
    When method get
    Then status 200
    And match response.participants == 1

#Teste 2
Scenario: Testando retorno para atividades com número de participantes invalido
    Given url url_base
    And path '?participants=10'
    When method get
    Then status 404

#Teste 3
Scenario: Testando retorno com chave existente
    Given url url_base
    And path '?key=1942393'
    When method get
    Then status 200

#Teste 4
Scenario: Testando retorno com preço igual a 0
    Given url url_base
    And path '?price=0.0'
    When method get
    Then status 200
    And match response.price == 0
    
#Teste 5
Scenario: Testando retorno com tipo igual a music
    Given url url_base
    And path '?type=music'
    When method get
    Then status 200
    And match response.type == 'music'

#Teste 6
Scenario: Testando retorno com chave correta e numero de participantes incorreto
    Given url url_base
    And path '?key=3920096'
    When method get
    And match response.participants == 2
    Then status 404
