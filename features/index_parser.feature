Feature: Index parser
  In order to be able to check indexs data
  A user of the rcmru gem
  I would like to user Rcmru::Index class

  @rcmru
  Scenario: Getting latest data for index
    When I fetch latest data for rcmru index with id: "11376"
    And I get pai data for that index
    Then I should get valid pai number
