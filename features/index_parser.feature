Feature: Index parser
  In order to be able to check indexs data
  A user of the rcmru gem
  I would like to user Rcmru::Index class

  Scenario: Getting data for index
    When I intrested in rcmru index with id: "11376"
    And I fetching pai data for that index for current day
    Then I should get valid numbers
