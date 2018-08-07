Feature: Division

  Scenario Outline: Dividend division divisor equal quotient
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      | input  | output |
      | 4/2    | 2      |
      | 5/2    | 2      |
