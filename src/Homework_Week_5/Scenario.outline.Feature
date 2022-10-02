Feature: Demo Nopcommerce's topmenu acceptance criareria
  As a user, i would like to check acceptance criteria of nopcommerce topmenu
  Background: User is on given URL
    When  User type URL https;//demo.nocommerce.com
    And   Click on book tab on top menu
    Then  User is navigated to Books Catogory

  Scenario: Verify that user can navigate to Book category
    When  User is on given URL
    And  Click on book tab on top menu
    Then User is navigated to book category page

  Scenario: Verify that user can see the Books category page with filter and list of products
    When  User is on given URL
    And  click on books tab top Menu
    And  Check Filtes and List tab.
    Then Books catagory page is displayed with Filter and list tabs
  Scenario:  Verify that user can see the books category page with filter and list of products
    When User is on given URL
    And  Click on books tab on top menu
    And  Check Filter and list tab.
    Then Books category page is displayed with filters and list tags
  Scenario: Verify that user can see "Sort by " filter on books category page
    Given   use is on books category page
    When  User is on books  category page
    And   Check 'soft by' filter is present
    Then 'sot by' filter is avilable on books category page

  Scenario: Verify that user can see 'Grid' tab on book category page
    Given user is on books category page
    When User is on books category page
    And  check 'grid' tab is present
    Then 'list' tab is available on book category page

  Scenario:  Verify that user can see 'List' tab on book catagory page
    Given  User is on Books category page
    When  User is on Books Category page
    And   Check 'List' tab is present

  Scenario:verify that user can see "Name A to Z" selection is present in "Sort by" filter
    Given User is on Books category page
    When  User is on Books category page
    And  Click on "Sort by " Filter
    And Check that "Name A to Z selection is present
    Then "Name A to Z" selection is present in "Sort by " filter

  Scenario: Verify that user can see "Name AtoZ" is first option in "Sort by " filter
    Given user is on books category page
    When  User is on Books category page
    And Click that "Name: A to Z" is first in order
    Then "Name A to Z" is first option in order

  Scenario: Veriry that user can see "Name A to Z" filter is finctionality as expexted
    Given User is on Books category page
    When User is on Books category page
    And Click on "Sort by" Filter
    And Select Name A to Z filter
    Then All product are displayed in alphabetical order