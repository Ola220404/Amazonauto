Feature: Add Product For Sale
  As a custmer
  i want the ability to search for a product
  So i can purchase

  Scenario: Add to basket
    Given i navigate to amazon home page
    And the search bar is visible
    When i click into the search bar
    And enter a valid product name
    And click the search button or tap enter on my keyboard
    And i get few product displayed with product name and price
    And i click on any of the selected product to display product information
    And i click on Add to Basket
    Then the product is added to my basket
    Then the basket icon displayed the number of product added to basket


  Scenario Outline: User cannot add to basket
    Given i navigate to amazon page
    And the search bar is visible
    When i click into the search bar
    And entered a product name that is out of stock
    And i click on the search button or tap enter button on my keyboard
    And product displayed with product name and price
    And i click on the selected product to display product information
    And i click on Add to Basket
    Then an error message is displayed advising user product is out of stock

    Examples