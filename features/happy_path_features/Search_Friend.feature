#Facebook Login feature
#author:  omar.navarro

Feature: Friend Search

  Scenario Outline:  Happy path friend search

    Given User is logged onto Facebook with <user> and <password>
    When User searches <friend_name>
    Then User is on Facebook Search Results Page
    Then User finds friend with <text>

    Examples:

      | user                | password  | friend_name | text |
      | onavarro@kueski.com | Test@1234 | Monica Galindo  |Guadalajara|