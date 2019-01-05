# End-to-end scenario to purchase items on amazon.com.  It includes the following steps:
# * Login
# * Searching products by three criteria
# * Adding products to the cart
# * Removing products to the cart
# * Checkout process
#author:  omar.navarro
@amazon
Feature: Amazon purchase end-to-end

  Scenario Outline:  User Searches and Adds/Removes items and Checks them out.

    Given User is on Amazon Home Page
    When User logs into Amazon page
    And User searches <product>
    And User applies filters
    And User adds random product
    And User adds 3 related product
    And User opens cart
    And User removes random product
    And User saves random product for later
    And User moves random product back to cart
    And User proceeds to checkout
    And User adds address
    And User chooses shipping options
    And User adds debit card
    And User select payment method
    Then User verifies order summary is correct.

    Then User is on TopTal Home Page

    Examples:

      | username              | password  |
      | omar.toptal@gmail.com | Test@1234 |