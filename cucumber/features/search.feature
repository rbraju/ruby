Feature: Site search
    To perform a keyword search from Macys home page.


Scenario: Keyword search from home page
    Given The user navigates to Macys home page
    When The user search for the word mens jeans
    Then The results for mens jeans is more than zero

Scenario: Keyword search from home page
    Given The user navigates to Macys home page
    When The user search for the word women jeans
    Then The results for women jeans is more than zero
