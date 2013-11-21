Feature: Login to cleartrip
  As a User
I should be able to login to cleartip
So that I can book a ticket

  Background:
    Given I am a registered user with userId:
    | UserId |
    | Abc    |
    | Xyz    |

Scenario Outline: Simple successful login
  When I login with userId "<UserId>"
  Then I should see successful login message
  Examples:
  | UserId |
  | Abc    |
  | Xyz    |
