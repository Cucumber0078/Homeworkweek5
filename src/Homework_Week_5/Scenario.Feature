Feature: Bookcategory


  Background: I should be able to see homepage
    Given  I enter URL"https: //demo.nopcommerce.com/" in browser
    And I am on home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be abel to see top meny tabs with "<catageroies>
    Examples:
      | categories      |
      |computer         |
      | Electronic      |
      |Apparel          |
      |Digital Downloads|
      |Books            |
      | jewellery       |
      | Gift card       |

  Scenario Outline: I should be able to see book page with Filters
    When   I select book catagory from top menu tabs on home page
    Then   I should be navigated to book catagory
    And   I should be able to see "<Filters>

    Examples:

      | fitlers    |
      | short by   |
      | display    |
      | the grid   |
      | list tab   |

  Scenario Outline: I should be abe to see list of terms of each Filter
    Given I am on book page
    When  i clikc on "<filter>"
    And   I click on any  "<option>"
    Then  I should be abel to choose any filter option from the list
    And  I should be able to see "<resutl>"


    Examples:
      |Filter      |option               | Result
      |Sort by     |Name: AtoZ           |sorted product with the product name in alphabetical order A to z
      |Sort by     |Name: ZtoA           |sorted product with the product name is alphabetical order Z to A
      |Sort by     |Price:low to high    |sorted product with the price in descending order
      |Sort by     |Price: High to low   |sorted product with the price in ascending order
      |Sort by     |Created on           |Recently added product shoud be show first
      |Display     |3                    |3 product in a page
      |Display     |6                    |6 product in a page
      |Display     |9                    |9 product in a page

  Scenario Outline: i should be able to see product display format according display format type as per given picture in srs document
    Given I am on book page
    When i click on "<display format icon>"
    Then I should be able to see product display format according display format type as per given picture in srs ducments


