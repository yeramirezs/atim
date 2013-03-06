Feature: List Sources


  Scenario: List investigation sources
    Given I visit a tesis with "1","1"
    Then  I should see  "El equilibrio economico dinamico"
    Then  I select thesis "1" and press "Show"
    And   I click "Listar fuentes"
    Then I should see "Pure exchange equilibrium of dynamic economic models"

