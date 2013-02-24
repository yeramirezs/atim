Feature: Search book

Scenario: Not exists
	Given I am on search
	When I try to search a book with "ppppppppppppppppppppppppppppppp"
	Then I should see "No se encontro nada"

Scenario: Empty search
	When I create a book with name " "
	Given I am on search
	When I try to search a book with ""
	Then I should be on result
	Then I should see "Libro 1"

Scenario: Existing whole name
	Given I am on search
	When I try to search a book with "Libro 1"
	Then I should see "Libro 1"

Scenario: Existing partial name
	Given I am on search
	When I try to search a book with "Libro"
	Then I should see "Libro 1"
