Feature: Add/Remove Elements

  @AREL001  @Regression @AddElement
  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks on the <Add button>
    Then user can view <Delete button>
    Examples:
      | Page Type | Add button | Delete button |
       |   https://the-internet.herokuapp.com/add_remove_elements/        |            |               |


  @AREL002 @Regression @Delete
  Scenario Outline: Check the functionality of Delete Button
    Given user navigates to <Page Type> page
    When user clicks on the <Add button>
    And user can view <Delete button>
    And user clicks on the <Delete button>
    Then user cannot view <Delete button>
    Examples:
      | Page Type | Add button | Delete button |



