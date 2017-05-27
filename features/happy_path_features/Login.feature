#Facebook Login feature
#author:  omar.navarro

Feature: Happy path login

Scenario Outline:  Happy path login with username and password

Given User is on Facebook Login Page
 When User clicks on Start Session
  And User inputs <user> and <password>
 Then User is on Facebook Home Page

 Examples:

 |user | password|
 |onavarro@kueski.com|Test1234|