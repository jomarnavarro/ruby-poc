#In all Media automation rank feature
#author:  omar.navarro

Feature: In All Media Automation Rank

  Scenario Outline:  Searches for In All Media on google and navigates to our main page.

    Given User is on Google Home Page
    When User searches <keyword>
    Then User is on Google Results Page
    And User clicks on <hyperlink>
    Then User is on InAllMedia Home Page

    Examples:

      | keyword      | hyperlink        |
      | In All Media | inallmedia.com |