#Login feature
#author:  omar.navarro

Feature: Happy path login

Scenario Outline:  Happy path login with username and password

Given User is on Home Screen
 When User clicks on Start Session
  And User inputs <user> and <password>
 Then User is on Loan Request Page

 Examples:

 |user | password|
 |onavarro@kueski.com|Test1234|