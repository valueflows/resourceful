Feature: Deleting resources
As a user
I want to delete a resource
So that I have no record of the resource

  Background: 
    Given I am a user of the app
      And the resource type is defined
  
  Scenario: Create a resource
    Given I wish to create a resource
      And I select its resource type id
     When I supply the data
      And the data is validated against the resource type schema
     Then a resource is created

  Scenario: No resource type id provided
    Given I wish to create a resource
      But does not provide the id of a resource type
     When I supply the data
     Then I recieve an error message "Resource Type identified, please provide the id of an existing resource type."

  Scenario: The resource type cannot be found
    Given I wish to create a resource
      But The resource type cannot be found
     When I supply the data
     Then I recieve an error message "Resource Type not found, check your spelling or create it before adding resources."

  Scenario: The data is invalid
    Given I wish to create a resource
      And I select its resource type
     When I supply the data
      But the data is not validated against the resource type schema
     Then I recieve an error message "Suppliod data failed validation against the Resource Type schema."
