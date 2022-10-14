Feature: Herokuapp Homepage

  @HEHO001 @Regression @UIElements
  Scenario Outline: Check the visibility of UI elements
    Given user navigates to <Page Type> page
    When user clicks on the <Link>
    Then user navigates to <Page>
    Examples:
      | Page Type            | Link                     | Page                   |
      |  https://the-internet.herokuapp.com/           | A/B Testing              | A/B Testing            |
      | Homepage             | Basic Auth               | Basic Auth             |
      | Homepage             | Checkboxes               | Checkboxes             |
      | Homepage             | Context Menu             | Context Menu           |



  @HEHO002 @Regression @AddElement

  Scenario Outline: Check the functionality of Add Element Button
    Given user navigates to <Page Type> page
    When user clicks on the <button/1>
    Then user can view <button/2>
    Examples:
      | Page Type              |button/1         | button/2         |
      |Add/Remove Elements     | Add Element     | Delete           |




  @HEHO003 @Regression @Delete

  Scenario Outline: Check the functionality of Delete Button
    Given user navigates to <Page Type> page
    When user clicks on the < button/1>
    And user can view <Delete button/2>
    And user clicks on the <button/2>
    Then user cannot view <button/2>
    Examples:
      | Page Type                 | button/1         | button/2       | button/2 |
      |Add/Remove Elements        | Add Element      | Delete          |          |



  @HEHO004 @Regression @Basic_authentication

  Scenario Outline: Check User is able to login
    Given user navigates to <Page Type> page
    When user enters value <Username> in the username input field
    And user enters value <Password> in the password input field
    And user clicks on Sign in button
    Then user can view the <Successful Message>
  Examples:
  | Page Type           | Username               |Password        | Successful Message                                            |
  |Basic Auth           | admin                     |admin            | Congratulations! You must have the proper credentials.    |




  @HEHO005 @Regression @Checkbox

  Scenario Outline: Check the functionality of Checkboxes
    Given user navigates to <Page Type> page
    When user selects checkbox with value <Checkbox 1>
  Examples:
  | Page Type               | Checkbox 1         |
  | Checkboxes            | Checkbox 1           |


  @HEHO006 @Regression @Menu

  Scenario Outline : Check the functionality of Alert apperance
    Given user navigates to <Page Type> page
    When user right clicks on the <Box>
    Then user can view the <Alert Message>
    Examples:
      | Page Type    | Box          | Alert Message               |
      | Context Menu | the-internet | You selected a context menu |