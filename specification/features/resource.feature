Feature: 
As a user
I want manage a resource and make a plan for it
So that I can save time 

  Background: 
    Given I am a user of the app
      And I have an existing collection for a resource
      And I have a defined resource type
  
  Scenario:
    Given I wish to create a resource
     When I supply the data
      And the data is validated against the resource type schema
     Then a resource is created
  
  Scenario: 
    Given I wish to delete a resource
     When I supply the id of the resource 
     Then it should be deleted
  
  Scenario: 
    Given I wish to read a resource
     When 
     Then 
  
  
