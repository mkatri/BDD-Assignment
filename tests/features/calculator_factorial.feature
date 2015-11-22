Feature: Acceptance Test for the
	factorial() function of Calculator

	Scenario: Calculate factorial of 4 on our calculator
		Given I am using the calculator
		When I input "4"!
		Then I should see "24"

	Scenario Outline: Calculate factorial of a number on our calculator
		Given I am using the calculator
		When I input "<input>"!
		Then I should see "<output>"

	Examples:
		| input | output |
		| 0			| 1			 |
		| 1     | 1      |
	  | 2     | 2      |
	  | 5     | 120		 |
	  | -2    | None	 |
