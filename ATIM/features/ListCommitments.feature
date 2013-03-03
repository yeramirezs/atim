Feature: List Commitments


  Scenario: List open commitments
    Given I visit a tesis with "1","1"
    Then  I should see  "El equilibrio economico dinamico"
    Then  I select thesis "1" and press "Show"
    And   I click "Consultar compromisos"
    Then I should see "Revision de las tesis de grado anteriores relacionadas con el equilibrio"



#  Scenario: List all commitments
#    Given I visit a thesis with "20","1"
#    Then I should see "Activo"
#    Then I cant see the button "Comenzar el proceso de tesis"
