Feature: Acceptance Test for the
	volume() function of Calculator

	Scenario: Calculate volume of 4x5x6 rectangular prism on our calculator
		Given I am using the calculator
		When I input volume of "4"x"5"x"6" rectangular prism
		Then I should see "120"

	Scenario Outline: Calculate volume of a rectangular prism on our calculator
		Given I am using the calculator
		When I input volume of "<input1>"x"<input2>"x"<input3>" rectangular prism
		Then I should see "<output>"

	Examples:
		| input1 | input2 | input3 | output |
		| 1		 	 | 1			| 1			 | 1      |
		| 2		 	 | 3			| 4			 | 24     |
		| 20	 	 | 6			| 8 		 | 960    |
		| 10	 	 | 5			| 12		 | 600    |
		| -10	 	 | 5			| 12		 | -600   |
